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

ActiveRecord::Schema[7.2].define(version: 2026_10_17_141748) do
  create_table "answers", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "kanji_id", null: false
    t.string "user_answer"
    t.boolean "correct"
    t.integer "rating_change"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanji_id"], name: "index_answers_on_kanji_id"
    t.index ["player_id"], name: "index_answers_on_player_id"
  end

  create_table "kanjis", force: :cascade do |t|
    t.string "character"
    t.integer "grade"
    t.string "level"
    t.string "vietnamese"
    t.integer "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "players" because of following NoMethodError
#   undefined method `size' for nil:NilClass


  add_foreign_key "answers", "kanjis"
  add_foreign_key "answers", "players"
end
