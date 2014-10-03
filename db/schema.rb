# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141003035840) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designs", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.boolean  "ispublic"
    t.text     "comment"
    t.datetime "design_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "category_id"
  end

  create_table "materials", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "necks", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orderdetails", force: true do |t|
    t.integer  "amount"
    t.float    "subtotal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.integer  "design_id"
    t.integer  "product_id"
  end

  create_table "orders", force: true do |t|
    t.text     "shipping_address"
    t.datetime "date_order"
    t.datetime "delivery_date"
    t.float    "total_price"
    t.text     "comment"
    t.string   "order_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "description"
    t.string   "image_url"
    t.integer  "stock"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "size_id"
    t.integer  "neck_id"
    t.integer  "sleeve_id"
    t.integer  "material_id"
  end

  create_table "rankings", force: true do |t|
    t.integer  "score"
    t.text     "comment"
    t.datetime "ranking_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "sizes", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sleeves", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "sncode"
    t.string   "name"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usertype_id"
  end

  create_table "usertypes", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
