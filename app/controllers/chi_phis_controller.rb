class ChiPhisController < ApplicationController
  def index
  	@chi_phis = ChiPhiView.all
  end

  def create
    @chi_phi = ChiPhi.new(chi_phi_params)
    if @chi_phi.save
      RefreshMatviewJob.new.async.perform('chi_phi')
      render json: {success: 'OK'}
    else
      render json: @chi_phi.errors.to_json
    end
  end

  private
  def chi_phi_params
  	params.require(:chi_phi).permit(
  	   :khoan_muc_chi, :so_luong, :don_gia, :ghi_chu
  	)
  end
end
