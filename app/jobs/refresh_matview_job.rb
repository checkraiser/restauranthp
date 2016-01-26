class RefreshMatviewJob
  include SuckerPunch::Job
  def perform(matview_type)
    ActiveRecord::Base.connection_pool.with_connection do
      if matview_type == 'chi_phi'
        Pusher.trigger('chi_phi_channel', 'chi_phi_updated', {
          message: 'hello world'
        })
      elsif matview_type == 'doan_thu'
        Pusher.trigger('doanh_thu_channel', 'doanh_thu_updated', {
          message: 'hello world'
        })
      elsif matview_type == 'nhap'
        Pusher.trigger('nhap_channel', 'nhap_updated', {
          message: 'hello world'
        })
      end
    end
  end
end