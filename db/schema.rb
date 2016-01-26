# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160126084527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chi_phis", force: :cascade do |t|
    t.string   "khoan_muc_chi"
    t.integer  "so_luong"
    t.integer  "don_gia"
    t.integer  "thanh_tien"
    t.text     "ghi_chu"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "doanh_thus", force: :cascade do |t|
    t.integer  "ban"
    t.string   "khoan_muc_thu"
    t.integer  "so_luong"
    t.integer  "don_gia"
    t.integer  "thanh_tien"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "nhaps", force: :cascade do |t|
    t.string   "loai_mat_hang"
    t.integer  "so_luong"
    t.integer  "don_gia"
    t.integer  "tong_tien"
    t.text     "ghi_chu"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end


  create_view :nhap_views, materialized: true,  sql_definition: <<-SQL
      SELECT nhaps.id,
      nhaps.loai_mat_hang,
      nhaps.don_gia,
      nhaps.so_luong,
      (nhaps.so_luong * nhaps.don_gia) AS thanh_tien
     FROM nhaps
    ORDER BY nhaps.created_at, nhaps.id;
  SQL

  create_view :chi_phi_views, materialized: true,  sql_definition: <<-SQL
      SELECT chi_phis.id,
      chi_phis.khoan_muc_chi,
      chi_phis.don_gia,
      chi_phis.so_luong,
      (chi_phis.so_luong * chi_phis.don_gia) AS thanh_tien
     FROM chi_phis
    ORDER BY chi_phis.created_at, chi_phis.id;
  SQL

  create_view :doanh_thu_views, materialized: true,  sql_definition: <<-SQL
      SELECT doanh_thus.id,
      doanh_thus.ban,
      doanh_thus.khoan_muc_thu,
      doanh_thus.don_gia,
      doanh_thus.so_luong,
      (doanh_thus.so_luong * doanh_thus.don_gia) AS thanh_tien
     FROM doanh_thus
    ORDER BY doanh_thus.created_at, doanh_thus.id;
  SQL
end
