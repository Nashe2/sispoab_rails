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

ActiveRecord::Schema[7.0].define(version: 2022_10_09_080359) do
  create_table "appointments", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "material_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_appointments_on_material_id"
    t.index ["person_id"], name: "index_appointments_on_person_id"
  end

  create_table "appoints", charset: "utf8mb4", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "person_id", null: false
    t.bigint "material_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_appoints_on_material_id"
    t.index ["person_id"], name: "index_appoints_on_person_id"
  end

  create_table "colors", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "hex_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crochets", charset: "utf8mb4", force: :cascade do |t|
    t.integer "ending_price"
    t.boolean "sale"
    t.bigint "person_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_crochets_on_person_id"
    t.index ["product_id"], name: "index_crochets_on_product_id"
  end

  create_table "materials", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "quantity"
    t.float "unit_price"
    t.boolean "is_thread"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", charset: "utf8mb4", force: :cascade do |t|
    t.string "titule"
    t.string "description"
    t.datetime "start_date"
    t.datetime "ending_date"
    t.float "discount_porcentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "materials"
  add_foreign_key "appointments", "people"
  add_foreign_key "appoints", "materials"
  add_foreign_key "appoints", "people"
  add_foreign_key "crochets", "people"
  add_foreign_key "crochets", "products"
end
