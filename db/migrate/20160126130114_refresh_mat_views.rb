class RefreshMatViews < ActiveRecord::Migration
  def change
  	execute "
  		select seed();
  		REFRESH MATERIALIZED VIEW chiphi_matview;
		REFRESH MATERIALIZED VIEW nhap_matview;
		REFRESH MATERIALIZED VIEW Doanhthu_matview;
  	"
  end
end
