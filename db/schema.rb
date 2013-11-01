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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131101083605) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "customers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "state"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "customers", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "customers", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true

  create_table "delivery_locations", :force => true do |t|
    t.string   "location_name"
    t.string   "location_address"
    t.text     "point_of_contact"
    t.integer  "fridge_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.date     "partnership_date"
    t.string   "partnership_agreement_file_name"
    t.string   "partnership_agreement_content_type"
    t.integer  "partnership_agreement_file_size"
    t.datetime "partnership_agreement_updated_at"
    t.string   "key_agreement_file_name"
    t.string   "key_agreement_content_type"
    t.integer  "key_agreement_file_size"
    t.datetime "key_agreement_updated_at"
  end

  add_index "delivery_locations", ["fridge_id"], :name => "index_delivery_locations_on_fridge_id"

  create_table "fridges", :force => true do |t|
    t.string   "fridge_brand"
    t.datetime "purchase_date"
    t.datetime "parts_warranty_end_date"
    t.datetime "compressor_warranty_end_date"
    t.text     "other_warranty_information"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "receipt_file_name"
    t.string   "receipt_content_type"
    t.integer  "receipt_file_size"
    t.datetime "receipt_updated_at"
  end

  create_table "meal_plans", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "meal_plan_type"
  end

  create_table "meals", :force => true do |t|
    t.string   "meal_type"
    t.string   "meal_title"
    t.text     "meal_description"
    t.text     "meal_ingredients"
    t.text     "meal_recipe"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "orders", :force => true do |t|
    t.text     "order_state"
    t.integer  "qty"
    t.string   "credit_card"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "meal_plan_id"
    t.integer  "customer_id"
    t.integer  "delivery_location_id"
  end

end
