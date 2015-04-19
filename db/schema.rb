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

ActiveRecord::Schema.define(version: 20150418151520) do

  create_table "articles", force: :cascade do |t|
    t.string   "name",       limit: 50,    default: ""
    t.text     "content",    limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "sector_id",  limit: 4,     default: 0
  end

  add_index "articles", ["sector_id"], name: "index_articles_on_sector_id", using: :btree

  create_table "kindeditor_assets", force: :cascade do |t|
    t.string   "asset",      limit: 255
    t.integer  "file_size",  limit: 4
    t.string   "file_type",  limit: 255
    t.integer  "owner_id",   limit: 4
    t.string   "asset_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "rank",           limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "articles_count", limit: 4,   default: 0
  end

end