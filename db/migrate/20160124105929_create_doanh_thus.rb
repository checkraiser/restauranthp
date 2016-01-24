class CreateDoanhThus < ActiveRecord::Migration
  def change
    create_table :doanh_thus do |t|
      t.integer :ban
      t.string :khoan_muc_thu
      t.integer :so_luong
      t.integer :don_gia
      t.integer :thanh_tien

      t.timestamps null: false
    end
  end
end
