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

ActiveRecord::Schema.define(version: 20160506163802) do

  create_table "easements", force: :cascade do |t|
    t.string   "exists"
    t.text     "effects"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "recorded_easement_file_name"
    t.string   "recorded_easement_content_type"
    t.integer  "recorded_easement_file_size"
    t.datetime "recorded_easement_updated_at"
  end

  create_table "liens", force: :cascade do |t|
    t.text     "liens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mortgages", force: :cascade do |t|
    t.string   "owner"
    t.date     "dated"
    t.integer  "book"
    t.integer  "page"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.integer  "paid_through"
    t.integer  "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
