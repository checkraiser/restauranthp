class InitTables < ActiveRecord::Migration
  def change
  	execute <<-SQL
  	 CREATE TABLE Nhap (
      Id SERIAL NOT NULL PRIMARY KEY, 
      Tenhang Varchar(100) NOT NULL, 
      Donvitinh Varchar(50), 
      Dongia Numeric(38, 0), 
      Soluong Integer, 
      create_at timestamp, 
      update_at timestamp
    );
    CREATE TABLE ChiPhi (
      Id SERIAL NOT NULL PRIMARY KEY, 
      Tenhang Varchar(100) NOT NULL, 
      Donvitinh Varchar(50), 
      Dongia Numeric(38, 0), 
      Soluong Integer, 
      create_at timestamp, 
      update_at timestamp
    );
    CREATE TABLE DoanhThu (
      Id SERIAL NOT NULL , 
      Masoban  Varchar(50),
      Khoanmucthu Varchar(100),
      Donvitinh Varchar(50), 
      Dongia Numeric(38, 0), 
      Soluong Integer, 
      create_at timestamp, 
      update_at timestamp,
      PRIMARY KEY (Id,Masoban,Khoanmucthu,create_at)
      
    );
    CREATE MATERIALIZED VIEW nhap_matview AS
      SELECT S.ngaynhap,SUM(S.ThanhTien) AS TienNhapTheoNgay
      FROM (
      SELECT Id,Tenhang, Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) ngaynhap,update_at 
      FROM nhap
      ) AS S
      GROUP BY S.ngaynhap
      ORDER BY S.ngaynhap;
    CREATE MATERIALIZED VIEW chiphi_matview AS
      SELECT S.ngaychiphi,SUM(S.ThanhTien) AS TienChiPhiTheoNgay
      FROM (
      SELECT Id,Tenhang, Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) ngaychiphi,update_at 
      FROM ChiPhi
      ) AS S
      GROUP BY S.ngaychiphi
      ORDER BY S.ngaychiphi;
    CREATE MATERIALIZED VIEW Doanhthu_matview AS
      SELECT S.NgayThu,SUM(S.ThanhTien) AS TienThuTheoNgay
      FROM (
      SELECT Id,masoban,khoanmucthu,Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) NgayThu,update_at 
      FROM doanhthu
      ) AS S
      GROUP BY S.NgayThu
      ORDER BY S.NgayThu;
    
  	SQL
  end
end
