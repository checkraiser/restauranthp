class AddFunctions < ActiveRecord::Migration
  def change
  	execute "CREATE OR REPLACE FUNCTION Chiphi_usp(date1 date,date2 date) 
			    RETURNS TABLE(ngaychiphi timestamp, tienchiphitheongay numeric(20))
			   AS
			$$
			    BEGIN
			    RETURN QUERY SELECT c.ngaychiphi,c.tienchiphitheongay
			        FROM chiphi_matview  c WHERE c.ngaychiphi between date1 and date2;
			END;
			$$
			  LANGUAGE 'plpgsql' VOLATILE;"
		
	execute "CREATE OR REPLACE FUNCTION Doanhthu_usp(date1 date,date2 date) 
			    RETURNS TABLE(ngaythu timestamp, tienthutheongay numeric(20))
			   AS
			$$
			    BEGIN
			    RETURN QUERY SELECT c.ngaythu,c.tienthutheongay
			        FROM doanhthu_matview  c WHERE c.ngaythu between date1 and date2;
			END;
			$$
			  LANGUAGE 'plpgsql' VOLATILE;"
		
	execute "CREATE OR REPLACE FUNCTION nhap_usp(date1 date,date2 date) 
			    RETURNS TABLE(ngaynhap timestamp, tiennhaptheongay numeric(20))
			   AS
			$$
			    BEGIN
			    RETURN QUERY SELECT c.ngaynhap,c.tiennhaptheongay
			        FROM nhap_matview  c WHERE c.ngaynhap between date1 and date2;
			END;
			$$
			  LANGUAGE 'plpgsql' VOLATILE;"

  end
end
