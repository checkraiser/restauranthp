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
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,10,'2016-01-01');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,10,'2016-01-01');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-01');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-02');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-02');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-02');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-03');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,10,'2016-01-03');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,10,'2016-01-04');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,10,'2016-01-05');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-06');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-07');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-08');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-09');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-10');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,10,'2016-01-11');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,10,'2016-01-12');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,10,'2016-01-13');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-14');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-15');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-16');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-17');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-18');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,10,'2016-01-19');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,10,'2016-01-20');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,10,'2016-01-21');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-22');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-23');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-24');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-25');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-26');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,10,'2016-01-27');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,10,'2016-01-28');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,10,'2016-01-29');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-30');
      INSERT INTO Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-31');
      CREATE TABLE ChiPhi (
        Id SERIAL NOT NULL PRIMARY KEY, 
        Tenhang Varchar(100) NOT NULL, 
        Donvitinh Varchar(50), 
        Dongia Numeric(38, 0), 
        Soluong Integer, 
        create_at timestamp, 
        update_at timestamp
      );
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,7,'2016-01-01');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,9,'2016-01-02');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-03');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-04');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-05');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-06');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-07');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,8,'2016-01-08');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Ghế','Chiếc',150000,8,'2016-01-09');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rượu Chivat21','Chai',600000,1,'2016-01-10');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rượu Whisky','Chai',700000,1,'2016-01-11');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,7,'2016-01-12');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,9,'2016-01-13');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-14');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-15');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-16');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-17');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-18');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,8,'2016-01-19');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Ghế','Chiếc',150000,8,'2016-01-10');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rượu Chivat21','Chai',600000,1,'2016-01-21');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rượu Whisky','Chai',700000,1,'2016-01-22');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt bò','Kg',200000,7,'2016-01-23');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt lợn','Kg',120000,9,'2016-01-24');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Thịt gà','Kg',150000,10,'2016-01-25');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Hành','Kg',10000,5,'2016-01-26');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Rau mùi','Kg',10000,5,'2016-01-27');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Dầu ăn','Lít',200000,10,'2016-01-28');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Xu hào','Kg',10000,10,'2016-01-29');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Gạo','Kg',15000,8,'2016-01-30');
      INSERT INTO Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) VALUES ('Ghế','Chiếc',150000,8,'2016-01-31');
      CREATE TABLE DoanhThu (
        Id SERIAL NOT NULL PRIMARY KEY, 
        Masoban  Varchar(50),
        Khoanmucthu Varchar(100),
        Donvitinh Varchar(50), 
        Dongia Numeric(38, 0), 
        Soluong Integer, 
        create_at timestamp, 
        update_at timestamp
      );
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Bò sốt vang','Đĩa',100000,2,'2016-01-01');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Xu hào xào','Đĩa',20000,1,'2016-01-02');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Rượu Chivat21','Chai',1000000,1,'2016-01-03');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Bò xào cần tỏi','Đĩa',100000,2,'2016-01-04');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Đuôi bò hầm','Bát',200000,1,'2016-01-05');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 03','Rượu Whisky','Chai',1500000,1,'2016-01-06');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 04','Rượu Whisky','Chai',1500000,1,'2016-01-07');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 05','Rượu Whisky','Chai',1500000,1,'2016-01-08');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Bò sốt vang','Đĩa',100000,2,'2016-01-09');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Xu hào xào','Đĩa',20000,1,'2016-01-10');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Rượu Chivat21','Chai',1000000,1,'2016-01-11');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Bò xào cần tỏi','Đĩa',100000,2,'2016-01-12');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Đuôi bò hầm','Bát',200000,1,'2016-01-13');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 03','Rượu Whisky','Chai',1500000,1,'2016-01-14');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 04','Rượu Whisky','Chai',1500000,1,'2016-01-15');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 05','Rượu Whisky','Chai',1500000,1,'2016-01-16');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Bò sốt vang','Đĩa',100000,2,'2016-01-17');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Xu hào xào','Đĩa',20000,1,'2016-01-18');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Rượu Chivat21','Chai',1000000,1,'2016-01-19');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Bò xào cần tỏi','Đĩa',100000,2,'2016-01-20');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Đuôi bò hầm','Bát',200000,1,'2016-01-21');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 03','Rượu Whisky','Chai',1500000,1,'2016-01-22');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 04','Rượu Whisky','Chai',1500000,1,'2016-01-23');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 05','Rượu Whisky','Chai',1500000,1,'2016-01-24');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Bò sốt vang','Đĩa',100000,2,'2016-01-25');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Xu hào xào','Đĩa',20000,1,'2016-01-26');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 01','Rượu Chivat21','Chai',1000000,1,'2016-01-27');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Bò xào cần tỏi','Đĩa',100000,2,'2016-01-28');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 02','Đuôi bò hầm','Bát',200000,1,'2016-01-29');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 03','Rượu Whisky','Chai',1500000,1,'2016-01-30');
      INSERT INTO DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) VALUES ('Bàn 04','Rượu Whisky','Chai',1500000,1,'2016-01-31');
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
      CREATE MATERIALIZED VIEW doanhthu_matview AS
      SELECT S.NgayThu,SUM(S.ThanhTien) AS TienThuTheoNgay
      FROM (
      SELECT Id,masoban,khoanmucthu,Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) NgayThu,update_at 
      FROM doanhthu
      ) AS S
      GROUP BY S.NgayThu
      ORDER BY S.NgayThu;
      REFRESH MATERIALIZED VIEW chiphi_matview;
      REFRESH MATERIALIZED VIEW nhap_matview;
      REFRESH MATERIALIZED VIEW Doanhthu_matview;
      CREATE OR REPLACE FUNCTION Chiphi_usp(date1 date,date2 date) 
          RETURNS TABLE(ngaychiphi timestamp, tienchiphitheongay numeric(20))
         AS
      $$
          BEGIN
          RETURN QUERY SELECT c.ngaychiphi,c.tienchiphitheongay
              FROM chiphi_matview  c WHERE c.ngaychiphi between date1 and date2;
      END;
      $$
        LANGUAGE 'plpgsql' VOLATILE;
      CREATE OR REPLACE FUNCTION Doanhthu_usp(date1 date,date2 date) 
          RETURNS TABLE(ngaythu timestamp, tienthutheongay numeric(20))
         AS
      $$
          BEGIN
          RETURN QUERY SELECT c.ngaythu,c.tienthutheongay
              FROM doanhthu_matview  c WHERE c.ngaythu between date1 and date2;
      END;
      $$
        LANGUAGE 'plpgsql' VOLATILE;
      CREATE OR REPLACE FUNCTION nhap_usp(date1 date,date2 date) 
          RETURNS TABLE(ngaynhap timestamp, tiennhaptheongay numeric(20))
         AS
      $$
          BEGIN
          RETURN QUERY SELECT c.ngaynhap,c.tiennhaptheongay
              FROM nhap_matview  c WHERE c.ngaynhap between date1 and date2;
      END;
      $$
        LANGUAGE 'plpgsql' VOLATILE;
      CREATE MATERIALIZED VIEW tonghoptheongay_matview AS 
      SELECT A.ngay,COALESCE(B.TienNhapTheoNgay,'0') TienNhap,COALESCE(C.TienChiPhiTheoNgay,'0') TienChiPhi,COALESCE(D.TienThuTheoNgay,'0') TienThuTheoNgay,COALESCE(D.TienThuTheoNgay,'0')-COALESCE(B.TienNhapTheoNgay,'0')- COALESCE(C.TienChiPhiTheoNgay,'0') AS LoiNhuan 
      FROM (Select distinct date_trunc('day',create_at) ngay
      From nhap
      UNION 
      Select distinct date_trunc('day',create_at) ngay
      From chiphi
      UNION 
      Select distinct date_trunc('day',create_at) ngay
      From doanhthu
      ) A
      LEFT OUTER JOIN
      (
              SELECT S.ngaynhap,SUM(S.ThanhTien) AS TienNhapTheoNgay
              FROM (
              SELECT Id,Tenhang, Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) ngaynhap,update_at 
              FROM nhap
              ) AS S
              GROUP BY S.ngaynhap
      ) B ON A.ngay=B.ngaynhap
      LEFT OUTER JOIN  
      (        SELECT S.ngaychiphi,SUM(S.ThanhTien) AS TienChiPhiTheoNgay
              FROM (
              SELECT Id,Tenhang, Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) ngaychiphi,update_at 
              FROM ChiPhi
              ) AS S
              GROUP BY S.ngaychiphi
      ) C ON A.ngay=C.ngaychiphi
      LEFT OUTER JOIN  
      (        SELECT S.NgayThu,SUM(S.ThanhTien) AS TienThuTheoNgay
              FROM (
              SELECT Id,masoban,khoanmucthu,Donvitinh,Dongia, Soluong, Soluong*Dongia AS ThanhTien,date_trunc('day',create_at) NgayThu,update_at 
              FROM doanhthu
              ) AS S
              GROUP BY S.NgayThu
      ) D ON A.ngay=D.NgayThu
      ORDER BY A.Ngay;
      REFRESH MATERIALIZED VIEW tonghoptheongay_matview;
  	SQL
  end
end
