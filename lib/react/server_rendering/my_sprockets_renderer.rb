require_relative "./environment_container"
require_relative "./manifest_container"
module React
  module ServerRendering
    # Extends ExecJSRenderer for the Rails environment
    # - builds JS code out of the asset pipeline
    # - stringifies props
    # - implements console replay
    class MySprocketsRenderer < ExecJSRenderer
      def initialize(options={})
        @replay_console = options.fetch(:replay_console, true)
        filenames = options.fetch(:files, ["react-server.js", "components.js"])
        js_code = CONSOLE_POLYFILL.dup

        filenames.each do |filename|
          js_code << asset_container.find_asset(filename)
        end

        super(options.merge(code: js_code))
      end

      def render(component_name, props, prerender_options)
        # pass prerender: :static to use renderToStaticMarkup
        react_render_method = if prerender_options == :static
            "renderToStaticMarkup"
          else
            "renderToString"
          end

        if !props.is_a?(String)
          props = props.to_json
        end

        super(component_name, props, {render_function: react_render_method})
      end

      def after_render(component_name, props, prerender_options)
        @replay_console ? CONSOLE_REPLAY : ""
      end

      # Reimplement console methods for replaying on the client
      CONSOLE_POLYFILL = <<-JS
        var console = { history: [] };
        ['error', 'log', 'info', 'warn'].forEach(function (fn) {
          console[fn] = function () {
            console.history.push({level: fn, arguments: Array.prototype.slice.call(arguments)});
          };
        });
      JS

      # Replay message from console history
      CONSOLE_REPLAY = <<-JS
        (function (history) {
          if (history && history.length > 0) {
            result += '\\n<scr'+'ipt>';
            history.forEach(function (msg) {
              result += '\\nconsole.' + msg.level + '.apply(console, ' + JSON.stringify(msg.arguments) + ');';
            });
            result += '\\n</scr'+'ipt>';
          }
        })(console.history);
      JS

      class << self
        attr_accessor :asset_container_class
      end

      # Get an object which exposes assets by their logical path.
      #
      # Out of the box, it supports a Sprockets::Environment (application.assets)
      # and a Sprockets::Manifest (application.assets_manifest), which covers the
      # default Rails setups.
      #
      # You can provide a custom asset container
      # with `React::ServerRendering::SprocketsRender.asset_container_class = MyAssetContainer`.
      #
      # @return [#find_asset(logical_path)] An object that returns asset contents by logical path
      def asset_container
        @asset_container ||= if self.class.asset_container_class.present?
          self.class.asset_container_class.new
        elsif ::Rails.application.config.assets.compile
          EnvironmentContainer.new
        else
          ManifestContainer.new
        end
      end
    end
  end
end