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

ActiveRecord::Schema.define(version: 20160914192532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.integer  "students_id"
    t.integer  "courses_id"
    t.datetime "entry_at"
    t.index ["courses_id"], name: "index_classrooms_on_courses_id", using: :btree
    t.index ["students_id", "courses_id"], name: "index_classrooms_on_students_id_and_courses_id", using: :btree
    t.index ["students_id"], name: "index_classrooms_on_students_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",        limit: 45
    t.string   "description", limit: 45
    t.integer  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_courses_on_name", using: :btree
    t.index ["status"], name: "index_courses_on_status", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",            limit: 45
    t.string   "register_number", limit: 45
    t.integer  "status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["register_number"], name: "index_students_on_register_number", using: :btree
    t.index ["status"], name: "index_students_on_status", using: :btree
  end

end
