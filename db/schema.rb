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

ActiveRecord::Schema.define(version: 2023_04_26_100846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bearings", force: :cascade do |t|
    t.text "name"
    t.text "manufacturer"
    t.text "material"
    t.integer "price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.text "name"
    t.text "manufacturer"
    t.text "size"
    t.integer "price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skateboards", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "truck_id"
    t.integer "bearing_id"
    t.integer "wheel_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "trucks", force: :cascade do |t|
    t.text "name"
    t.text "manufacturer"
    t.text "size"
    t.text "weight"
    t.integer "price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

  create_table "wheels", force: :cascade do |t|
    t.text "name"
    t.text "manufacturer"
    t.text "size"
    t.text "duro"
    t.integer "price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
