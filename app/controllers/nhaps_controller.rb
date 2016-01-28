class NhapsController < ApplicationController
  def index
    @nhaps = Nhap.last(10)
    @options_tenhang = Nhap.pluck(:tenhang).uniq
    @options_donvitinh = Nhap.pluck(:donvitinh).uniq
    respond_to do |format|
      format.html do 
        render :index
      end
      format.json do 
        render json: {nhaps: @nhaps, options_tenhang: @options_tenhang, options_donvitinh: @options_donvitinh}
      end
    end
  end

  def create
    @nhap = Nhap.new(nhap_params)
    if @nhap.save
      NhapView.refresh
      TongHopView.refresh
      Pusher.trigger('restaurant_channel', 'nhap_updated', {
        message: 'hello world'
      })
      render json: @nhap.to_json
    else
      render json: @nhap.errors.to_json
    end
  end

  private
  def nhap_params
    params.require(:nhap).permit(
       :tenhang, :donvitinh, :soluong, :dongia, :create_at
    )
  end
end
