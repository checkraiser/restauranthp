require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require_relative "../lib/react/server_rendering/my_sprockets_renderer"
module Restaurant
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.react.addons = true
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.autoload_paths += %W(#{config.root}/app)
    config.active_record.schema_format = :sql
    config.react.server_renderer_pool_size  ||= 1  # ExecJS doesn't allow more than one on MRI
    config.react.server_renderer_timeout    ||= 20 # seconds
    config.react.server_renderer = React::ServerRendering::MySprocketsRenderer
    config.react.server_renderer_options = {
      files: ["react-server.js", "components.js"], # files to load for prerendering
      replay_console: true,                 # if true, console.* will be replayed client-side
    }
  end
end
