class AddIndexToMatview < ActiveRecord::Migration
  def change
  	add_index :chiphi_matview, :ngaychiphi, unique: true
  	add_index :nhap_matview, :ngaynhap, unique: true
  	add_index :doanhthu_matview, :ngaythu, unique: true
  	add_index :tonghoptheongay_matview, :ngaynhap, unique: true
  end
end
