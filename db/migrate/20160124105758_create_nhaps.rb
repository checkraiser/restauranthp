class CreateNhaps < ActiveRecord::Migration
  def change
    create_table :nhaps do |t|
      t.string :loai_mat_hang
      t.integer :so_luong
      t.integer :don_gia
      t.integer :tong_tien
      t.text :ghi_chu

      t.timestamps null: false
    end
  end
end
