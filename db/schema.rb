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

ActiveRecord::Schema.define(version: 20160909163901) do

  create_table "dwl_orders_orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_phone"
    t.string   "giveaway_selection"
    t.string   "deliver_order_number"
    t.text     "scan_badge_info"
    t.integer  "order_compartment"
    t.integer  "delivery_method",        default: 0, null: false
    t.integer  "status",                 default: 0, null: false
    t.datetime "assigned_date"
    t.datetime "delivered_date"
    t.datetime "pickup_email_sent_date"
    t.datetime "pickup_date"
    t.integer  "position_id"
    t.integer  "item_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["item_id"], name: "index_dwl_orders_orders_on_item_id"
    t.index ["position_id"], name: "index_dwl_orders_orders_on_position_id"
  end

  create_table "dwl_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_dwl_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dwl_users_on_reset_password_token", unique: true
  end

end
