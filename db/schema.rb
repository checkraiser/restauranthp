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

ActiveRecord::Schema.define(version: 20160126121245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chiphi", force: :cascade do |t|
    t.string   "tenhang",   limit: 100,                null: false
    t.string   "donvitinh", limit: 50
    t.decimal  "dongia",                precision: 38
    t.integer  "soluong"
    t.datetime "create_at"
    t.datetime "update_at"
  end

  create_table "doanhthu", id: false, force: :cascade do |t|
    t.integer  "id",                                     default: "nextval('doanhthu_id_seq'::regclass)", null: false
    t.string   "masoban",     limit: 50,                                                                  null: false
    t.string   "khoanmucthu", limit: 100,                                                                 null: false
    t.string   "donvitinh",   limit: 50
    t.decimal  "dongia",                  precision: 38
    t.integer  "soluong"
    t.datetime "create_at",                                                                               null: false
    t.datetime "update_at"
  end

  create_table "nhap", force: :cascade do |t|
    t.string   "tenhang",   limit: 100,                null: false
    t.string   "donvitinh", limit: 50
    t.decimal  "dongia",                precision: 38
    t.integer  "soluong"
    t.datetime "create_at"
    t.datetime "update_at"
  end


  create_view :nhap_matview, materialized: true,  sql_definition: <<-SQL
      SELECT s.ngaynhap,
      sum(s.thanhtien) AS tiennhaptheongay
     FROM ( SELECT nhap.id,
              nhap.tenhang,
              nhap.donvitinh,
              nhap.dongia,
              nhap.soluong,
              ((nhap.soluong)::numeric * nhap.dongia) AS thanhtien,
              date_trunc('day'::text, nhap.create_at) AS ngaynhap,
              nhap.update_at
             FROM nhap) s
    GROUP BY s.ngaynhap
    ORDER BY s.ngaynhap;
  SQL

  create_view :chiphi_matview, materialized: true,  sql_definition: <<-SQL
      SELECT s.ngaychiphi,
      sum(s.thanhtien) AS tienchiphitheongay
     FROM ( SELECT chiphi.id,
              chiphi.tenhang,
              chiphi.donvitinh,
              chiphi.dongia,
              chiphi.soluong,
              ((chiphi.soluong)::numeric * chiphi.dongia) AS thanhtien,
              date_trunc('day'::text, chiphi.create_at) AS ngaychiphi,
              chiphi.update_at
             FROM chiphi) s
    GROUP BY s.ngaychiphi
    ORDER BY s.ngaychiphi;
  SQL

  create_view :doanhthu_matview, materialized: true,  sql_definition: <<-SQL
      SELECT s.ngaythu,
      sum(s.thanhtien) AS tienthutheongay
     FROM ( SELECT doanhthu.id,
              doanhthu.masoban,
              doanhthu.khoanmucthu,
              doanhthu.donvitinh,
              doanhthu.dongia,
              doanhthu.soluong,
              ((doanhthu.soluong)::numeric * doanhthu.dongia) AS thanhtien,
              date_trunc('day'::text, doanhthu.create_at) AS ngaythu,
              doanhthu.update_at
             FROM doanhthu) s
    GROUP BY s.ngaythu
    ORDER BY s.ngaythu;
  SQL
end
