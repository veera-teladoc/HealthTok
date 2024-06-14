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

ActiveRecord::Schema[7.1].define(version: 2024_06_14_154411) do
  create_table "addresses", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "address_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_addresses_on_member_id"
  end

  create_table "email_addresses", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "member_id"
    t.string "email_address"
    t.string "email_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_email_addresses_on_member_id"
  end

  create_table "groups", charset: "utf8mb4", force: :cascade do |t|
    t.string "group_nm"
    t.string "registration_group_cd"
    t.string "card_nm"
    t.string "group_type_cd"
    t.string "notes"
    t.datetime "effective_start_dt"
    t.datetime "effective_end_dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_nm"
    t.string "last_nm"
    t.string "username"
    t.string "gender"
    t.string "healthplan_id"
    t.string "source_member_id"
    t.date "dob"
    t.datetime "effective_start_dt"
    t.datetime "effective_end_dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_numbers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "member_id"
    t.string "phone_number"
    t.string "extension"
    t.string "phone_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_phone_numbers_on_member_id"
  end

  create_table "providers", charset: "utf8mb4", force: :cascade do |t|
    t.string "provider_type_cd"
    t.string "provider_name"
    t.string "location"
    t.string "description"
    t.string "source_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "members"
end
