class ChiPhisController < ApplicationController
  def index
  	@chi_phis = ChiPhi.all
    @options_tenhang = ChiPhi.pluck :tenhang
    @options_donvitinh = ChiPhi.pluck :donvitinh
    @props = {chi_phis: {chi_phis: @chi_phis, options_tenhang: @options_tenhang, options_donvitinh: @options_donvitinh}}
  end

  def create
    @chi_phi = ChiPhi.new(chi_phi_params)
    if @chi_phi.save
      ChiPhiView.refresh
      #Pusher.trigger('chi_phi_channel', 'chi_phi_updated', {
      #  message: 'hello world'
      #})
      render @chi_phi
    else
      render json: @chi_phi.errors.to_json
    end
  end

  private
  def chi_phi_params
  	params.require(:chi_phi).permit(
  	   :tenhang, :donvitinh, :soluong, :dongia, :create_at
  	)
  end
end
