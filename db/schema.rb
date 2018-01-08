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

ActiveRecord::Schema.define(version: 20180107202019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admission_scores", force: :cascade do |t|
    t.float "gpa"
    t.integer "sat_score"
    t.integer "admission_index_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admission_scores_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.integer "min_admission_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_schools", force: :cascade do |t|
    t.bigint "admission_score_id"
    t.bigint "school_id"
    t.integer "status"
    t.index ["admission_score_id"], name: "index_score_schools_on_admission_score_id"
    t.index ["school_id"], name: "index_score_schools_on_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "email"
    t.string "first_name"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admission_scores", "users"
  add_foreign_key "score_schools", "admission_scores"
  add_foreign_key "score_schools", "schools"
end
