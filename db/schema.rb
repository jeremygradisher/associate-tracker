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

ActiveRecord::Schema.define(version: 20160218144123) do

  create_table "associate_attachments", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "avatar"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associate_gresumes", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "gresume"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associate_resumes", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "resume"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associates", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_primary"
    t.string   "phone_cell"
    t.string   "email"
    t.string   "email_personal"
    t.string   "address_home"
    t.string   "address_business"
    t.string   "project_history"
    t.string   "position"
    t.string   "working_locations"
    t.text     "notes"
    t.boolean  "active"
    t.string   "ein_ss"
    t.string   "birthday"
    t.string   "family"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
