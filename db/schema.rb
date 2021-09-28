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

ActiveRecord::Schema.define(version: 2021_09_27_170716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tickets_id"
    t.bigint "users_id"
    t.index ["tickets_id"], name: "index_comments_on_tickets_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "device_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "station_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "ticket_title"
    t.string "ticket_details"
    t.integer "ticket_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.bigint "devices_id"
    t.bigint "stations_id"
    t.bigint "status_id"
    t.index ["devices_id"], name: "index_tickets_on_devices_id"
    t.index ["stations_id"], name: "index_tickets_on_stations_id"
    t.index ["status_id"], name: "index_tickets_on_status_id"
    t.index ["users_id"], name: "index_tickets_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.boolean "ticket_owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "tickets", column: "tickets_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "tickets", "devices", column: "devices_id"
  add_foreign_key "tickets", "stations", column: "stations_id"
  add_foreign_key "tickets", "statuses"
  add_foreign_key "tickets", "users", column: "users_id"
end
