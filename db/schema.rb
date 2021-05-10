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

ActiveRecord::Schema.define(version: 2021_05_10_193218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "apartment"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zipcode"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.integer "plant_id"
    t.integer "tool_id"
    t.integer "price"
    t.integer "weight"
    t.datetime "date"
  end

  create_table "plants", force: :cascade do |t|
    t.float "price"
    t.float "weight"
    t.integer "quantity"
    t.string "common_name"
    t.string "scientific_name"
    t.float "temperature_minimum"
    t.float "precipitation_minimum"
    t.float "precipitation_maximum"
    t.integer "serial"
    t.string "moisture_use"
    t.string "image"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "weight"
    t.integer "quantity"
    t.string "description"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
