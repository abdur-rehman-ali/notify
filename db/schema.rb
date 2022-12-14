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

ActiveRecord::Schema.define(version: 2022_08_22_132920) do

  create_table "inventories", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "user_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "receive_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "trade_request_id"
    t.index ["trade_request_id"], name: "index_receive_items_on_trade_request_id"
  end

  create_table "sent_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "trade_request_id"
    t.index ["trade_request_id"], name: "index_sent_items_on_trade_request_id"
  end

  create_table "trade_items_givens", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "trade_request_id"
    t.index ["trade_request_id"], name: "index_trade_items_givens_on_trade_request_id"
  end

  create_table "trade_requests", force: :cascade do |t|
    t.integer "sent_to"
    t.integer "user_id"
    t.integer "status"
    t.index ["user_id", "sent_to"], name: "index_trade_requests_on_user_id_and_sent_to", unique: true
    t.index ["user_id"], name: "index_trade_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
