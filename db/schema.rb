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

ActiveRecord::Schema.define(version: 2019_07_02_111634) do

  create_table "age_group_products", force: :cascade do |t|
    t.integer "age_group_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["age_group_id"], name: "index_age_group_products_on_age_group_id"
    t.index ["product_id"], name: "index_age_group_products_on_product_id"
  end

  create_table "age_groups", force: :cascade do |t|
    t.integer "present_opponent_id"
    t.integer "product_id"
    t.integer "age_group_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["present_opponent_id"], name: "index_age_groups_on_present_opponent_id"
    t.index ["product_id"], name: "index_age_groups_on_product_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "budget_max"
    t.integer "budget_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_controlls", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_controlls_on_category_id"
    t.index ["product_id"], name: "index_category_controlls_on_product_id"
  end

  create_table "genders", force: :cascade do |t|
    t.integer "gender"
    t.string "gender_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "present_opponent_products", force: :cascade do |t|
    t.integer "present_opponent_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["present_opponent_id"], name: "index_present_opponent_products_on_present_opponent_id"
    t.index ["product_id"], name: "index_present_opponent_products_on_product_id"
  end

  create_table "present_opponents", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.integer "age_group_number"
    t.string "mail_address"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_present_opponents_on_user_id"
  end

  create_table "present_products", force: :cascade do |t|
    t.integer "present_id"
    t.integer "product_id"
    t.float "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["present_id"], name: "index_present_products_on_present_id"
    t.index ["product_id"], name: "index_present_products_on_product_id"
  end

  create_table "presents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "present_opponent_id"
    t.integer "purpose_number"
    t.date "present_date"
    t.date "purchase_date"
    t.integer "budget"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["present_opponent_id"], name: "index_presents_on_present_opponent_id"
    t.index ["user_id"], name: "index_presents_on_user_id"
  end

  create_table "product_managements", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "product_id"
    t.integer "stock"
    t.date "derivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_managements_on_product_id"
    t.index ["shop_id"], name: "index_product_managements_on_shop_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "characteristic"
    t.string "product_hp"
    t.integer "price"
    t.integer "purpose_number"
    t.integer "age_group_number"
    t.string "image"
    t.boolean "status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purpose_products", force: :cascade do |t|
    t.integer "purpose_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purpose_products_on_product_id"
    t.index ["purpose_id"], name: "index_purpose_products_on_purpose_id"
  end

  create_table "purposes", force: :cascade do |t|
    t.integer "present_id"
    t.integer "product_id"
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["present_id"], name: "index_purposes_on_present_id"
    t.index ["product_id"], name: "index_purposes_on_product_id"
  end

  create_table "shop_managements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_managements_on_shop_id"
    t.index ["user_id"], name: "index_shop_managements_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "web_site"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.date "birthday"
    t.boolean "admin", default: false, null: false
    t.boolean "shopkeeper", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
