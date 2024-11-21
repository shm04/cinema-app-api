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

ActiveRecord::Schema[7.1].define(version: 2024_11_20_185002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.string "cinema_name", null: false
    t.string "address", null: false
    t.boolean "isOpen", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "genre", null: false
    t.integer "duration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cinema_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "cinema_id", null: false
    t.string "room_name", null: false
    t.string "room_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_rooms_on_cinema_id"
  end

  create_table "seats", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.string "row", null: false
    t.integer "number", null: false
    t.boolean "taken", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_seats_on_room_id"
  end

  create_table "shows", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "started", null: false
    t.datetime "finished", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_shows_on_movie_id"
    t.index ["room_id"], name: "index_shows_on_room_id"
  end

  add_foreign_key "rooms", "cinemas"
  add_foreign_key "seats", "rooms"
  add_foreign_key "shows", "movies"
  add_foreign_key "shows", "rooms"
end
