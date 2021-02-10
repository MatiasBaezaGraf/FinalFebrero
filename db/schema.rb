# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_10_212907) do

  create_table "cabins", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "real_ammount"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cabin_id", null: false
    t.integer "roll_id", null: false
    t.index ["cabin_id"], name: "index_payments_on_cabin_id"
    t.index ["roll_id"], name: "index_payments_on_roll_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "price"
    t.datetime "from"
    t.datetime "to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id", null: false
    t.index ["vehicle_id"], name: "index_rates_on_vehicle_id"
  end

  create_table "rolls", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "patent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "roll_id", null: false
    t.string "category"
    t.index ["roll_id"], name: "index_vehicles_on_roll_id"
  end

  add_foreign_key "payments", "cabins"
  add_foreign_key "payments", "rolls"
  add_foreign_key "rates", "vehicles"
  add_foreign_key "vehicles", "rolls"
end
