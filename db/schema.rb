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

ActiveRecord::Schema[7.2].define(version: 2024_10_21_192131) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "user_auth_type", ["base", "admin", "super_admin", "admin_read_only"]

  create_table "cart_items", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "subtotal"
    t.float "tax_percentage"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.float "discount_percent"
    t.boolean "active"
    t.datetime "deleted_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "total"
    t.bigint "payment_details_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_details_id"], name: "index_order_details_on_payment_details_id"
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_details_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_details_id"], name: "index_order_items_on_order_details_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "payment_details", force: :cascade do |t|
    t.bigint "order_id"
    t.string "provider"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "deleted_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_inventories", force: :cascade do |t|
    t.bigint "quantity"
    t.datetime "deleted_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "sku"
    t.bigint "product_category_id", null: false
    t.bigint "product_inventory_id", null: false
    t.float "price"
    t.bigint "discount_id", null: false
    t.datetime "deleted_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_products_on_discount_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["product_inventory_id"], name: "index_products_on_product_inventory_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.enum "user_type", default: "base", enum_type: "user_auth_type"
    t.integer "points"
  end

  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "products"
  add_foreign_key "carts", "users"
  add_foreign_key "order_details", "payment_details", column: "payment_details_id"
  add_foreign_key "order_details", "users"
  add_foreign_key "order_items", "order_details", column: "order_details_id"
  add_foreign_key "order_items", "products"
  add_foreign_key "products", "discounts"
  add_foreign_key "products", "product_categories"
  add_foreign_key "products", "product_inventories"
end
