# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2016_07_29_142644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associate_attachments", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "avatar"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_contracts", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "contract"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_direct_deposits", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "direct_deposit"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_drivers_insurances", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "drivers_insurance"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_drivers_licenses", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "drivers_license"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_gresumes", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "gresume"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_resumes", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "resume"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associate_w9s", id: :serial, force: :cascade do |t|
    t.integer "associate_id"
    t.string "w9"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "associates", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "phone_primary"
    t.string "phone_cell"
    t.string "email"
    t.string "email_personal"
    t.string "project_history"
    t.text "notes"
    t.boolean "active"
    t.string "ein_ss"
    t.string "birthday"
    t.string "family"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "primary_street"
    t.string "primary_city"
    t.string "primary_state"
    t.string "primary_zip"
    t.string "business_street"
    t.string "business_city"
    t.string "business_state"
    t.string "business_zip"
    t.string "certifications"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "associates_positions", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "position_id", null: false
    t.index ["associate_id", "position_id"], name: "index_associates_positions_on_associate_id_and_position_id"
  end

  create_table "associates_projects", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "project_id", null: false
    t.index ["associate_id", "project_id"], name: "index_associates_projects_on_associate_id_and_project_id"
  end

  create_table "associates_wrklocs", id: false, force: :cascade do |t|
    t.integer "associate_id", null: false
    t.integer "wrkloc_id", null: false
  end

  create_table "positions", id: :serial, force: :cascade do |t|
    t.string "pos_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_cicons", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "cicon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_invoices", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "invoice"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pcontracts", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pcontract"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pdocuments", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pdocument"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_picons", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "picon"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pproposals", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pproposal"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_prevcontracts", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "prevcontract"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "project_pw9s", id: :serial, force: :cascade do |t|
    t.integer "project_id"
    t.string "pw9"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "projects", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "project_street"
    t.string "project_city"
    t.string "project_state"
    t.string "project_zip"
    t.text "brief_description"
    t.text "staffing_notes"
    t.string "deal_terms"
    t.string "rate"
    t.string "additional_terms"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "project_start"
    t.string "project_finish"
    t.string "status"
    t.text "link"
    t.string "client_name"
    t.string "client_contact"
    t.string "client_meeting"
    t.string "client_street"
    t.string "client_city"
    t.string "client_state"
    t.string "client_zip"
    t.string "nbd"
    t.string "phases"
    t.string "grand_total"
    t.string "email"
    t.string "telephone"
    t.text "correspondence_notes"
  end

  create_table "projects_services", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "service_id", null: false
    t.index ["project_id", "service_id"], name: "index_projects_services_on_project_id_and_service_id"
  end

  create_table "services", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wrklocs", id: :serial, force: :cascade do |t|
    t.string "wrkstate"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
