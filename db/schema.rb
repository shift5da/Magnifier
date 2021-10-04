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

ActiveRecord::Schema.define(version: 2021_10_03_152347) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact"
    t.string "contact_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.integer "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "product_code_ranges", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "begin"
    t.integer "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_code_ranges_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.text "description"
    t.text "phone_raw_page"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_products_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "account"
    t.string "password"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "companies", "users"
  add_foreign_key "product_code_ranges", "products"
end
