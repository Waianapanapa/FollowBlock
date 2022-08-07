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

ActiveRecord::Schema.define(version: 20150827021833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer  "user_id",                                                       null: false
    t.string   "product",                                                       null: false
    t.decimal  "quantity",       precision: 13, scale: 3,                       null: false
    t.decimal  "price",          precision: 12, scale: 2,                       null: false
    t.string   "city",                                                          null: false
    t.string   "state",                                                         null: false
    t.string   "payment_type",                                                  null: false
    t.integer  "number_of_days",                                                null: false
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.integer  "payment_term"
    t.string   "area_type"
    t.integer  "unpaved_road"
    t.string   "status",                                  default: "available", null: false
    t.integer  "orders_count"
  end

  add_index "bids", ["user_id"], name: "index_bids_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "bid_id",     null: false
    t.string   "text",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["bid_id"], name: "index_messages_on_bid_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "bid_id",     null: false
    t.string   "status",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["bid_id"], name: "index_orders_on_bid_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.jsonb    "profile",                default: {},        null: false
    t.string   "role",                   default: "regular", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["profile"], name: "index_users_on_profile", using: :gin
  add_index "users", ["reset_password_token"], name: "index_users_