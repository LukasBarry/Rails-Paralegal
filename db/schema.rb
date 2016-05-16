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

ActiveRecord::Schema.define(version: 20160515144140) do

  create_table "buyers", force: :cascade do |t|
    t.string   "current_owner"
    t.string   "borrower"
    t.string   "property_address"
    t.string   "county"
    t.integer  "purchase_price"
    t.integer  "owners_coverage"
    t.string   "lender_name"
    t.string   "type_of_loan"
    t.integer  "loan_number"
    t.integer  "loan_amount"
    t.string   "type_of_policy"
    t.string   "icl_requested"
    t.string   "alta_endorsement"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  add_index "buyers", ["user_id"], name: "index_buyers_on_user_id"

  create_table "constructions", force: :cascade do |t|
    t.string   "construct_complete"
    t.string   "construct_lien_appointed"
    t.string   "construct_lien_name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "buyer_id"
  end

  add_index "constructions", ["buyer_id"], name: "index_constructions_on_buyer_id"

  create_table "databases", force: :cascade do |t|
    t.integer  "account_number"
    t.integer  "tax_year"
    t.integer  "real_estate_id"
    t.string   "primary_owner"
    t.integer  "street_number"
    t.string   "street_name"
    t.integer  "deed_book"
    t.integer  "deed_page"
    t.integer  "building_value"
    t.integer  "land_value"
    t.integer  "total_value"
    t.integer  "total_tax_billed"
    t.integer  "total_tax_due"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "easements", force: :cascade do |t|
    t.string   "exists"
    t.text     "effects"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "recorded_easement_file_name"
    t.string   "recorded_easement_content_type"
    t.integer  "recorded_easement_file_size"
    t.datetime "recorded_easement_updated_at"
    t.integer  "buyer_id"
  end

  add_index "easements", ["buyer_id"], name: "index_easements_on_buyer_id"

  create_table "liens", force: :cascade do |t|
    t.text     "liens"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "lien_amount"
    t.integer  "buyer_id"
  end

  add_index "liens", ["buyer_id"], name: "index_liens_on_buyer_id"

  create_table "manufactured_homes", force: :cascade do |t|
    t.string   "m_home_exists"
    t.string   "m_home_real_estate"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "m_home_affidavit_file_name"
    t.string   "m_home_affidavit_content_type"
    t.integer  "m_home_affidavit_file_size"
    t.datetime "m_home_affidavit_updated_at"
    t.integer  "buyer_id"
  end

  add_index "manufactured_homes", ["buyer_id"], name: "index_manufactured_homes_on_buyer_id"

  create_table "mortgages", force: :cascade do |t|
    t.string   "owner"
    t.date     "dated"
    t.integer  "book"
    t.integer  "page"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "buyer_id"
  end

  add_index "mortgages", ["buyer_id"], name: "index_mortgages_on_buyer_id"

  create_table "occupancies", force: :cascade do |t|
    t.string   "occupants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "buyer_id"
  end

  add_index "occupancies", ["buyer_id"], name: "index_occupancies_on_buyer_id"

  create_table "prior_policies", force: :cascade do |t|
    t.string   "pp_exists"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "pp_copy_file_name"
    t.string   "pp_copy_content_type"
    t.integer  "pp_copy_file_size"
    t.datetime "pp_copy_updated_at"
    t.integer  "buyer_id"
  end

  add_index "prior_policies", ["buyer_id"], name: "index_prior_policies_on_buyer_id"

  create_table "property_uses", force: :cascade do |t|
    t.string   "property_use_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "buyer_id"
  end

  add_index "property_uses", ["buyer_id"], name: "index_property_uses_on_buyer_id"

  create_table "taxes", force: :cascade do |t|
    t.integer  "paid_through"
    t.integer  "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "buyer_id"
  end

  add_index "taxes", ["buyer_id"], name: "index_taxes_on_buyer_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firm_name"
    t.string   "attorney_name"
    t.integer  "phone_number"
    t.integer  "fax_number"
    t.text     "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
