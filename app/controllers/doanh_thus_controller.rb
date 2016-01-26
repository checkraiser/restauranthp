class DoanhThusController < ApplicationController
  def index
  	@doanh_thus = DoanhThuView.all
  end

  def create
    @doanh_thu = DoanhThu.new(doanh_thu_params)
    if @doanh_thu.save
      RefreshMatViewJob.perform_async('doanh_thu')
      render partial: 'doanh_thus/doanh_thu', locals: {doanh_thu: @doanh_thu} 
    else
      render json: @doanh_thu.errors.to_json
    end
  end

  private
  def doanh_thu_params
  	params.require(:doanh_thu).permit(
  	   :ban, :khoan_muc_thu, :so_luong, :don_gia
  	)
  end
end
