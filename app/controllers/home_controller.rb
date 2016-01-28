class HomeController < ApplicationController
  def index
    @loinhuan = TongHopView.pluck(:ngay, :loinhuan)
    @tonghop = TongHopView.last(5)
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
