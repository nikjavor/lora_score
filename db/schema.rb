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

ActiveRecord::Schema[7.2].define(version: 2024_10_02_202228) do
  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minigames", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.boolean "min"
    t.boolean "max"
    t.boolean "srce"
    t.boolean "dame"
    t.boolean "kralj"
    t.boolean "lora"
    t.boolean "prognoza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.integer "games_played"
    t.integer "wins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.integer "score_position"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
