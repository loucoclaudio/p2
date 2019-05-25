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

ActiveRecord::Schema.define(version: 2019_05_23_103237) do

  create_table "dexes", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "species"
    t.string "sprite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dex_id"
    t.integer "tipo1_id"
    t.integer "tipo2_id"
    t.index ["dex_id"], name: "index_pokemons_on_dex_id"
    t.index ["tipo1_id"], name: "index_pokemons_on_tipo1_id"
    t.index ["tipo2_id"], name: "index_pokemons_on_tipo2_id"
  end

  create_table "tipo1s", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo2s", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
