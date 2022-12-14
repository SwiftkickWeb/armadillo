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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_195408) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients_contacts", id: false, force: :cascade do |t|
    t.integer "client_id"
    t.integer "contact_id"
    t.index ["client_id"], name: "index_clients_contacts_on_client_id"
    t.index ["contact_id"], name: "index_clients_contacts_on_contact_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "secondary_address"
    t.string "city"
    t.string "zip"
    t.string "state"
    t.string "country"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_properties", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_web_properties_on_client_id"
  end

  add_foreign_key "web_properties", "clients"
end
