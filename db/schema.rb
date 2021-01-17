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

ActiveRecord::Schema.define(version: 2021_01_17_102647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brews", force: :cascade do |t|
    t.string "brew_method"
    t.float "c_weight"
    t.float "w_weight"
    t.string "extra_details"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brews_on_user_id"
  end

  create_table "coffee_beans", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating", default: 0
    t.integer "roast_level", default: 1
    t.string "extra_details"
    t.string "geography"
    t.string "flavor"
    t.string "processing"
  end

  create_table "points", force: :cascade do |t|
    t.integer "value"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "username"
    t.string "password"
    t.datetime "recent_login_date"
    t.integer "streak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "brews", "users"
  add_foreign_key "points", "users"
end
