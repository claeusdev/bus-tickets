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

ActiveRecord::Schema.define(version: 20180707132646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buses", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "num_seats"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ticket_id"
    t.decimal "order_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_orders_on_ticket_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "routes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "origin"
    t.string "destination"
    t.string "name"
  end

  create_table "seats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bus_id"
    t.boolean "available", default: true
    t.integer "seat_number"
    t.index ["bus_id"], name: "index_seats_on_bus_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "route_id"
    t.decimal "price"
    t.datetime "departure_date"
    t.time "departure_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bus_id"
    t.bigint "seat_id"
    t.index ["bus_id"], name: "index_tickets_on_bus_id"
    t.index ["route_id"], name: "index_tickets_on_route_id"
    t.index ["seat_id"], name: "index_tickets_on_seat_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "username"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "seats", "buses"
  add_foreign_key "tickets", "buses"
  add_foreign_key "tickets", "routes"
  add_foreign_key "tickets", "seats"
end
