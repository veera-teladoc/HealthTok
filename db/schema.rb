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

ActiveRecord::Schema[7.1].define(version: 2024_06_14_152123) do
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
    t.bigint "member_id_id"
    t.string "phone_number"
    t.string "extension"
    t.string "phone_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id_id"], name: "index_phone_numbers_on_member_id_id"
  end

end
