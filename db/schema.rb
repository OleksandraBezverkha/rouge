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

ActiveRecord::Schema.define(version: 20160225125108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacheds", force: :cascade do |t|
    t.string   "atached"
    t.integer  "description_id"
    t.integer  "comment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "attacheds", ["comment_id"], name: "index_attacheds_on_comment_id", using: :btree
  add_index "attacheds", ["description_id"], name: "index_attacheds_on_description_id", using: :btree

  create_table "cards", force: :cascade do |t|
    t.string   "card"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cards", ["fraud_id"], name: "index_cards_on_fraud_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "city"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["fraud_id"], name: "index_cities_on_fraud_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "fraud_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["fraud_id"], name: "index_comments_on_fraud_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "descriptions", force: :cascade do |t|
    t.string   "description"
    t.integer  "fraud_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "descriptions", ["fraud_id"], name: "index_descriptions_on_fraud_id", using: :btree

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "emails", ["fraud_id"], name: "index_emails_on_fraud_id", using: :btree

  create_table "frauds", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "patronymic"
    t.string   "icq"
    t.string   "type"
    t.string   "status"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "phones", force: :cascade do |t|
    t.string   "phone"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phones", ["fraud_id"], name: "index_phones_on_fraud_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "region"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "regions", ["fraud_id"], name: "index_regions_on_fraud_id", using: :btree

  create_table "skypes", force: :cascade do |t|
    t.string   "skype"
    t.integer  "fraud_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skypes", ["fraud_id"], name: "index_skypes_on_fraud_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "status"
    t.integer  "fraud_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["fraud_id"], name: "index_users_on_fraud_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "attacheds", "comments"
  add_foreign_key "attacheds", "descriptions"
  add_foreign_key "cards", "frauds"
  add_foreign_key "cities", "frauds"
  add_foreign_key "comments", "frauds"
  add_foreign_key "comments", "users"
  add_foreign_key "descriptions", "frauds"
  add_foreign_key "emails", "frauds"
  add_foreign_key "phones", "frauds"
  add_foreign_key "regions", "frauds"
  add_foreign_key "skypes", "frauds"
  add_foreign_key "users", "frauds"
end
