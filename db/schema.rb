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

ActiveRecord::Schema.define(version: 2020_03_10_155359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ghosts", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.date "death_date"
    t.string "bio"
    t.string "cause_of_death"
    t.bigint "haunted_house_id"
    t.index ["haunted_house_id"], name: "index_ghosts_on_haunted_house_id"
  end

  create_table "haunted_houses", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "latitude"
    t.integer "longitude"
    t.integer "year_built"
    t.string "history"
  end

  create_table "user_haunted_houses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "haunted_house_id"
    t.index ["haunted_house_id"], name: "index_user_haunted_houses_on_haunted_house_id"
    t.index ["user_id"], name: "index_user_haunted_houses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "bio"
  end

end
