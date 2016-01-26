class OptionsController < ApplicationController
  def index
    if params[:type] == 'chi_phi'
  	  @options = ChiPhiView.pluck :khoan_muc_chi
    elsif params[:type] == 'nhap'
      @options = NhapView.pluck :loai_mat_hang
    elsif params[:type] == 'doanh_thu'
      @options = DoanhThuView.pluck :khoan_muc_thu
    else
      @options = []
    end
  end
end
