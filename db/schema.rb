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

ActiveRecord::Schema.define(version: 20140719164953) do

  create_table "lost_accounts", force: true do |t|
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sales_rep_id"
  end

  create_table "sales_reps", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nickname"
  end

  create_table "territories", force: true do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "territory_id"
    t.integer  "sales_rep_id"
  end

  add_index "territories", ["sales_rep_id"], name: "index_territories_on_sales_rep_id"

  create_table "tracings", force: true do |t|
    t.string   "record_id"
    t.string   "dist_id"
    t.string   "inside"
    t.string   "shipto"
    t.string   "add1"
    t.string   "add2"
    t.string   "add3"
    t.string   "add4"
    t.string   "city"
    t.string   "st"
    t.string   "prod_type"
    t.string   "contract"
    t.string   "prod_no"
    t.string   "description"
    t.string   "qty"
    t.string   "ext_amnt"
    t.string   "inv_date"
    t.string   "sklar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sales_rep_id"
  end

end
