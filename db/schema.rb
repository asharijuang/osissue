# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150104135213) do

  create_table "issues", force: true do |t|
    t.integer  "project_id",     default: 0,  null: false
    t.integer  "tracker_id",     default: 0,  null: false
    t.string   "subject",        default: "", null: false
    t.text     "description"
    t.integer  "status_id",      default: 0,  null: false
    t.integer  "priority_id",    default: 0,  null: false
    t.date     "due_date"
    t.integer  "author_id",      default: 0,  null: false
    t.integer  "assigned_to_id", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name",        limit: 30, default: "",   null: false
    t.text     "description",            default: "",   null: false
    t.boolean  "is_public",              default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
