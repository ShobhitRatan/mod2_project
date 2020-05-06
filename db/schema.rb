# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_06_141536) do

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "street"
    t.string "apartment"
    t.integer "zipcode"
    t.string "name"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.datetime "arrival_estimate"
    t.integer "location_id"
    t.integer "user_id"
    t.float "total_price"
    t.float "tax"
    t.float "shipping_fee"
    t.float "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "order_status"
  end

  create_table "plant_orders", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "order_id"
    t.float "weight"
    t.float "line_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.float "precipitation_maximum"
    t.float "temperature_minimum"
    t.float "precipitation_minimum"
    t.string "moisture_use"
    t.integer "serial_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "weight"
    t.string "price"
  end

  create_table "tool_orders", force: :cascade do |t|
    t.integer "tool_id"
    t.integer "order_id"
    t.float "weight"
    t.float "line_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "weight"
    t.string "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
