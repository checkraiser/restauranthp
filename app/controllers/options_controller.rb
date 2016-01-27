class OptionsController < ApplicationController
  def index
    if params[:type] == 'chi_phi'
  	  @options = ChiPhi.pluck params[:column]
    elsif params[:type] == 'nhap'
      @options = Nhap.pluck params[:column]
    elsif params[:type] == 'doanh_thu'
      @options = DoanhThu.pluck params[:column]
    else
      @options = []
    end
  end
end
