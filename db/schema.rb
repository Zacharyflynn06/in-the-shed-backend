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

ActiveRecord::Schema.define(version: 2021_06_01_220427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chords", force: :cascade do |t|
    t.string "quality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measures", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "chord_id", null: false
    t.integer "time_signiture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chord_id"], name: "index_measures_on_chord_id"
    t.index ["song_id"], name: "index_measures_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "tempo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "measures", "chords"
  add_foreign_key "measures", "songs"
end