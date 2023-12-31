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

ActiveRecord::Schema[7.0].define(version: 2023_09_12_012006) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text "comments"
    t.integer "targetHeartRateZone"
    t.float "rest_time"
    t.bigint "block_id", null: false
    t.bigint "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_activities_on_block_id"
    t.index ["exercise_id"], name: "index_activities_on_exercise_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "block_type", default: 0, null: false
    t.text "comments"
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_blocks_on_group_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_exercises", force: :cascade do |t|
    t.bigint "equipment_id", null: false
    t.bigint "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_equipment_exercises_on_equipment_id"
    t.index ["exercise_id"], name: "index_equipment_exercises_on_exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name", null: false
    t.text "instructions"
    t.integer "difficulty", null: false
    t.integer "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises_muscles", force: :cascade do |t|
    t.bigint "exercise_id", null: false
    t.bigint "muscle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercises_muscles_on_exercise_id"
    t.index ["muscle_id"], name: "index_exercises_muscles_on_muscle_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer "repeats", default: 0, null: false
    t.float "rest_time", default: 0.0, null: false
    t.integer "target_heart_rate_zone"
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_groups_on_section_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repetitions", force: :cascade do |t|
    t.float "amount", null: false
    t.float "weight"
    t.float "speed"
    t.float "resistance"
    t.float "incline"
    t.boolean "to_failure", default: false, null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_repetitions_on_activity_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.integer "status"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_routines_on_plan_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name", null: false
    t.text "comments"
    t.integer "section_index", default: 0, null: false
    t.bigint "routine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["routine_id"], name: "index_sections_on_routine_id"
  end

  add_foreign_key "activities", "blocks"
  add_foreign_key "activities", "exercises"
  add_foreign_key "blocks", "groups"
  add_foreign_key "equipment_exercises", "equipment"
  add_foreign_key "equipment_exercises", "exercises"
  add_foreign_key "exercises_muscles", "exercises"
  add_foreign_key "exercises_muscles", "muscles"
  add_foreign_key "groups", "sections"
  add_foreign_key "repetitions", "activities"
  add_foreign_key "routines", "plans"
  add_foreign_key "sections", "routines"
end
