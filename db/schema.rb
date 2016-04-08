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

ActiveRecord::Schema.define(version: 20160408103714) do

  create_table "locations", force: :cascade do |t|
    t.integer  "share_location_id",   limit: 4
    t.integer  "share_location_type", limit: 4
    t.float    "x",                   limit: 24
    t.float    "y",                   limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "openid",         limit: 255
    t.string   "nickname",       limit: 255
    t.boolean  "sex"
    t.string   "city",           limit: 255
    t.string   "province",       limit: 255
    t.string   "country",        limit: 255
    t.string   "language",       limit: 255
    t.string   "headimgurl",     limit: 255
    t.datetime "subscribe_time"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "members", ["openid"], name: "index_members_on_openid", length: {"openid"=>191}, using: :btree

  create_table "pay_records", force: :cascade do |t|
    t.integer  "member_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.float    "price",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "user_imgs", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.integer  "user_id",    limit: 4
    t.boolean  "del",                    default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "user_likes", force: :cascade do |t|
    t.integer  "member_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.boolean  "del",                  default: true
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "phone",           limit: 255
    t.string   "username",        limit: 255
    t.string   "password_digest", limit: 255
    t.boolean  "sex",                         default: false
    t.integer  "age",             limit: 4,   default: 0
    t.integer  "height",          limit: 4
    t.float    "price",           limit: 24
    t.boolean  "del",                         default: true
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", length: {"username"=>191}, using: :btree

end
