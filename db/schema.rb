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

ActiveRecord::Schema.define(version: 20160127174854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "participant_id"
    t.text     "value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "billing_addresses", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "company",             limit: 255
    t.string   "first_address_line",  limit: 255
    t.string   "second_address_line", limit: 255
    t.string   "postal_code",         limit: 255
    t.string   "city",                limit: 255
    t.string   "country",             limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string   "number",             limit: 255
    t.integer  "user_id"
    t.integer  "team_id"
    t.integer  "billing_address_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "document_models", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "question",    limit: 255
    t.text     "description"
    t.string   "type",        limit: 255
    t.boolean  "required"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.string   "email",               limit: 255
    t.date     "birthday"
    t.string   "gender",              limit: 255
    t.boolean  "valid_participation"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "team_id"
    t.integer  "document_id"
    t.integer  "registration_id"
    t.integer  "user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "bill_id"
    t.float    "price"
    t.float    "taxes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question",        limit: 255
    t.string   "type",            limit: 255
    t.integer  "registration_id"
    t.text     "default_value"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "registration_pools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "amount"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.float    "price"
    t.integer  "min_age"
    t.integer  "max_age"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string   "var",        limit: 255, null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
