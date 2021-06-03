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

ActiveRecord::Schema.define(version: 2021_06_03_191524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chord_measures", force: :cascade do |t|
    t.bigint "chord_id", null: false
    t.bigint "measure_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chord_id"], name: "index_chord_measures_on_chord_id"
    t.index ["measure_id"], name: "index_chord_measures_on_measure_id"
  end

  create_table "chords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measures", force: :cascade do |t|
    t.integer "time_signiture"
    t.bigint "time_signiture_id", null: false
    t.bigint "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_measures_on_song_id"
    t.index ["time_signiture_id"], name: "index_measures_on_time_signiture_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "tempo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_signitures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "chord_measures", "chords"
  add_foreign_key "chord_measures", "measures"
  add_foreign_key "measures", "songs"
  add_foreign_key "measures", "time_signitures"
end
