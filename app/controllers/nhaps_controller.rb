class NhapsController < ApplicationController
  def index
  	@nhaps = NhapView.all
  end

  def create
    @nhap = Nhap.new(nhap_params)
    if @nhap.save
      RefreshMatviewJob.new.async.perform('nhap')
      render json: {success: 'OK'}
    else
      render json: @nhap.errors.to_json
    end
  end

  private
  def nhap_params
  	params.require(:nhap).permit(
  	   :loai_mat_hang, :so_luong, :don_gia
  	)
  end
end
