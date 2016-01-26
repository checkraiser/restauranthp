class CreateNhapViews < ActiveRecord::Migration
  def change
    create_view :nhap_views, materialized: true
    add_index :nhap_views, :id, unique: true
  end
end
