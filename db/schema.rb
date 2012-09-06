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

ActiveRecord::Schema.define(:version => 20120904024641) do

  create_table "credit_scores", :force => true do |t|
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emergency_contacts", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "i_app_id"
  end

  create_table "employments", :force => true do |t|
    t.string   "employer"
    t.string   "occupation"
    t.integer  "hours_per_week"
    t.string   "supervisor_name"
    t.string   "supervisor_phone"
    t.integer  "years_employed"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "i_app_id"
  end

  create_table "i_apps", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "social_security_number"
    t.date     "date_of_birth"
    t.string   "drivers_license_number"
    t.string   "drivers_license_state"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "user_id"
    t.integer  "marital_status_id"
    t.integer  "r_app_id"
    t.integer  "credit_score_id"
  end

  create_table "incomes", :force => true do |t|
    t.integer  "income"
    t.string   "source"
    t.boolean  "proof_of_income"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "i_app_id"
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ooglers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile_phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "stripe_charge_token"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "personal_references", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "i_app_id"
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "type_breed"
    t.boolean  "indoor"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "i_app_id"
  end

  create_table "previous_addresses", :force => true do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "length_lived_months"
    t.string   "landlord_name"
    t.string   "landlord_phone"
    t.string   "reason_for_leaving"
    t.decimal  "rent_amount"
    t.boolean  "rent_paid"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "i_app_id"
  end

  create_table "properties", :force => true do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "r_apps", :force => true do |t|
    t.date     "submission_date"
    t.integer  "property"
    t.integer  "landlord"
    t.integer  "listing_broker"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "landlord_id"
    t.integer  "listing_broker_id"
    t.integer  "property_id"
  end

  create_table "users", :force => true do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "color"
    t.string   "license_plate_number"
    t.string   "license_plate_state"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "i_app_id"
  end

end
