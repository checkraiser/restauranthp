class CreateChiPhiViews < ActiveRecord::Migration
  def change
    create_view :chi_phi_views, materialized: true
    add_index :chi_phi_views, :id, unique: true
  end
end
