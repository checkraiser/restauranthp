class ChiPhisController < ApplicationController
  def index
  	@chi_phis = ChiPhi.all
  end

  def create
    @chi_phi = ChiPhi.new(chi_phi_params)
    if @chi_phi.save
      render partial: 'chi_phis/chi_phi', locals: {chi_phi: @chi_phi} 
    else
      render json: @todo.errors.to_json
    end
  end

  private
  def chi_phi_params
  	params.require(:chi_phi).permit(
  	   :khoan_muc_chi, :so_luong, :don_gia, :ghi_chu
  	)
  end
end
