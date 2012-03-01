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

ActiveRecord::Schema.define(:version => 20120301080131) do

  create_table "articles", :force => true do |t|
    t.integer  "quantity"
    t.string   "description"
    t.float    "unit_cost"
    t.integer  "iva"
    t.integer  "invoice_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clients", :force => true do |t|
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
    t.string   "name"
    t.string   "rfc"
    t.string   "street"
    t.string   "num_ext"
    t.string   "num_int"
    t.string   "colony"
    t.string   "delegation"
    t.string   "state"
    t.integer  "cp"
    t.string   "logo_emp"
    t.string   "qr"
    t.string   "username"
  end

  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true
  add_index "clients", ["reset_password_token"], :name => "index_clients_on_reset_password_token", :unique => true

  create_table "folios", :force => true do |t|
    t.integer  "client_id"
    t.integer  "folio"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.date     "date"
    t.integer  "client_id"
    t.integer  "folio_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resumes", :force => true do |t|
    t.integer  "iva"
    t.float    "subtotal"
    t.float    "total"
    t.integer  "invoice_id"
    t.string   "letter_number"
    t.string   "payment_condition"
    t.string   "receipt"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
