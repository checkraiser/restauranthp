class ChiPhisController < ApplicationController
  def index
    @chi_phis = ChiPhi.last(10)
    respond_to do |format|
      format.html do 
        render :index
      end
      format.json do 
        render json: {chi_phis: @chi_phis}
      end
    end
  end

  def create
    @chi_phi = ChiPhi.new(chi_phi_params)
    if @chi_phi.save
      ChiPhiView.refresh
      Pusher.trigger('chi_phi_channel', 'chi_phi_updated', {
        message: 'hello world'
      })
      render json: @chi_phi.to_json
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
