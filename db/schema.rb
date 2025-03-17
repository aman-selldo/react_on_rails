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

ActiveRecord::Schema[8.0].define(version: 2025_03_13_070747) do
  create_table "activities", force: :cascade do |t|
    t.integer "destination_id", null: false
    t.string "name", null: false
    t.date "date", null: false
    t.time "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_activities_on_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.string "location", null: false
    t.date "arrival_date", null: false
    t.string "arrival_time", null: false
    t.date "departure_date", null: false
    t.string "departure_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_destinations_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "role", default: "user", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "destinations"
  add_foreign_key "destinations", "trips"
  add_foreign_key "trips", "users"
end
