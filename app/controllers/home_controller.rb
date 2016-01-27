class HomeController < ApplicationController
  def index
  	fromdate = (Date.strptime(params[:fromdate], '%Y-%m-%d') if params[:fromdate]) || Time.now
    todate = (Date.strptime(params[:todate], '%Y-%m-%d') if params[:todate]) || Time.now
  	gon.doanhthu = DoanhThuView.report(fromdate, todate)
  	gon.chiphi = ChiPhiView.report(fromdate, todate)
  	gon.nhap = NhapView.report(fromdate, todate)
    @chiphi_chart = ChiPhi.pluck("create_at, soluong * dongia as tien").group_by_hour {|u| u[0]}
  end
  def report
  	fromdate = (Date.strptime(params[:fromdate], '%Y-%m-%d') if params[:fromdate]) || Time.now
    todate = (Date.strptime(params[:todate], '%Y-%m-%d') if params[:todate]) || Time.now
  	doanhthu = DoanhThuView.report(fromdate, todate)
  	chiphi = ChiPhiView.report(fromdate, todate)
  	nhap = NhapView.report(fromdate, todate)
  	render json: {doanhthu: doanhthu, chiphi: chiphi, nhap: nhap}
  end
end
