class DoanhThusController < ApplicationController
  def index
    @doanh_thus = DoanhThu.last(10)
    @options_masoban = DoanhThu.pluck(:masoban).uniq
    @options_khoanmucthu = DoanhThu.pluck(:khoanmucthu).uniq
    @options_donvitinh = DoanhThu.pluck(:donvitinh).uniq
    respond_to do |format|
      format.html do 
        render :index
      end
      format.json do 
        render json: {doanh_thus: @doanh_thus, options_masoban: @options_masoban, options_khoanmucthu: @options_khoanmucthu, options_donvitinh: @options_donvitinh}
      end
    end
  end

  def create
    @doanh_thu = DoanhThu.new(doanh_thu_params)
    if @doanh_thu.save
      DoanhThuView.refresh
      Pusher.trigger('DoanhThu_channel', 'DoanhThu_updated', {
        message: 'hello world'
      })
      render json: @doanh_thu.to_json
    else
      render json: @doanh_thu.errors.to_json
    end
  end

  private
  def doanh_thu_params
    params.require(:doanh_thu).permit(
       :masoban, :khoanmucthu, :donvitinh, :dongia, :soluong, :create_at
    )
  end
end
