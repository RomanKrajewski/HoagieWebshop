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

ActiveRecord::Schema.define(version: 20170131232716) do

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_type"
    t.string   "name"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "extras"
    t.decimal  "price"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_orders_on_User_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string   "payment_type"
    t.decimal  "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string   "bread_type"
    t.string   "sauce"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selfie_posts", force: :cascade do |t|
    t.string   "description"
    t.string   "picture_url"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["User_id"], name: "index_selfie_posts_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",          null: false
    t.string   "billing_information"
    t.string   "billing_address"
    t.string   "delivery_address"
    t.datetime "updated_at",          null: false
  end

end
