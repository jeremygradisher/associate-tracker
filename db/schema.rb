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

ActiveRecord::Schema.define(version: 20160622223657) do

  create_table "associate_attachments", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "avatar"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associate_contracts", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "contract"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associate_direct_deposits", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "direct_deposit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "associate_drivers_insurances", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "drivers_insurance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "associate_drivers_licenses", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "drivers_license"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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

  create_table "associate_w9s", force: :cascade do |t|
    t.integer  "associate_id"
    t.string   "w9"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "associates", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_primary"
    t.string   "phone_cell"
    t.string   "email"
    t.string   "email_personal"
    t.string   "project_history"
    t.text     "notes"
    t.boolean  "active"
    t.string   "ein_ss"
    t.string   "birthday"
    t.string   "family"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "primary_street"
    t.string   "primary_city"
    t.string   "primary_state"
    t.string   "primary_zip"
    t.string   "business_street"
    t.string   "business_city"
    t.string   "business_state"
    t.string   "business_zip"
    t.string   "certifications"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "associates_positions", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "position_id",  null: false
  end

  add_index "associates_positions", ["associate_id", "position_id"], name: "index_associates_positions_on_associate_id_and_position_id"

  create_table "associates_projects", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "project_id",   null: false
  end

  add_index "associates_projects", ["associate_id", "project_id"], name: "index_associates_projects_on_associate_id_and_project_id"

  create_table "associates_wrklocs", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "wrkloc_id",    null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "pos_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_cicons", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "cicon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_invoices", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "invoice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_pcontracts", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "pcontract"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_picons", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "picon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_pproposals", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "pproposal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_prevcontracts", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "prevcontract"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "project_street"
    t.string   "project_city"
    t.string   "project_state"
    t.string   "project_zip"
    t.text     "brief_description"
    t.string   "services"
    t.text     "staffing_notes"
    t.string   "deal_terms"
    t.string   "rate"
    t.string   "additional_terms"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "project_start"
    t.string   "project_finish"
    t.string   "status"
    t.text     "link"
    t.string   "client_name"
    t.string   "client_contact"
    t.string   "client_meeting"
    t.text     "client_proposal"
    t.string   "client_billing"
    t.string   "client_street"
    t.string   "client_city"
    t.string   "client_state"
    t.string   "client_zip"
  end

  create_table "projects_services", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "service_id", null: false
  end

  add_index "projects_services", ["project_id", "service_id"], name: "index_projects_services_on_project_id_and_service_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "wrklocs", force: :cascade do |t|
    t.string   "wrkstate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
