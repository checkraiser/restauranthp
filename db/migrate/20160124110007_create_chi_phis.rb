class CreateChiPhis < ActiveRecord::Migration
  def change
    create_table :chi_phis do |t|
      t.string :khoan_muc_chi
      t.integer :so_luong
      t.integer :don_gia
      t.integer :thanh_tien
      t.text :ghi_chu

      t.timestamps null: false
    end
  end
end
