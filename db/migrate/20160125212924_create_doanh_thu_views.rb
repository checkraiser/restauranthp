class CreateDoanhThuViews < ActiveRecord::Migration
  def change
    create_view :doanh_thu_views, materialized: true
    add_index :doanh_thu_views, :id, unique: true
  end
end
