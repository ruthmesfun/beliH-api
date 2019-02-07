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

ActiveRecord::Schema.define(version: 2019_02_06_145353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teacher_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "lesson_comments", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.bigint "lesson_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_comments_on_lesson_id"
    t.index ["student_id"], name: "index_lesson_comments_on_student_id"
    t.index ["teacher_id"], name: "index_lesson_comments_on_teacher_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "objective"
    t.bigint "unit_id"
    t.string "content"
    t.string "video"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_lessons_on_unit_id"
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_units_on_course_id"
  end

  add_foreign_key "lesson_comments", "lessons"
  add_foreign_key "lesson_comments", "students"
  add_foreign_key "lesson_comments", "teachers"
  add_foreign_key "lessons", "units"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "units", "courses"
end
