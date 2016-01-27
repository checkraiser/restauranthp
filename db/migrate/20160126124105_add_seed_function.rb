class AddSeedFunction < ActiveRecord::Migration
  def change
  	execute "
  		CREATE FUNCTION seed() RETURNS void AS $$
		    BEGIN
		        insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt bò','Kg',200000,10,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt lợn','Kg',120000,10,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt gà','Kg',150000,10,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Hành','Kg',10000,5,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Rau mùi','Kg',10000,5,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Dầu ăn','Lít',200000,10,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Xu hào','Kg',10000,10,now());
				insert into Nhap (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Gạo','Kg',15000,10,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt bò','Kg',200000,7,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt lợn','Kg',120000,9,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Thịt gà','Kg',150000,10,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Hành','Kg',10000,5,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Rau mùi','Kg',10000,5,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Dầu ăn','Lít',200000,10,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Xu hào','Kg',10000,10,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Gạo','Kg',15000,8,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Ghế','Chiếc',150000,8,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Rượu Chivat21','Chai',600000,1,now());
				insert into Chiphi (Tenhang,Donvitinh,Dongia,Soluong,create_at) values ('Rượu Whisky','Chai',700000,1,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 01','Bò sốt vang','Đĩa',100000,2,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 01','Xu hào xào','Đĩa',20000,1,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 01','Rượu Chivat21','Chai',1000000,1,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 02','Bò xào cần tỏi','Đĩa',100000,2,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 02','Đuôi bò hầm','Bát',200000,1,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 03','Rượu Whisky','Chai',1500000,1,now());
				insert into DoanhThu (Masoban,Khoanmucthu,Donvitinh,Dongia,Soluong,create_at) values ('Bàn 04','Rượu Whisky','Chai',1500000,1,now());
		    END;
		$$ LANGUAGE plpgsql;
  	"
  end
end
