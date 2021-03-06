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

ActiveRecord::Schema.define(version: 20140914041449) do

  create_table "_temp", id: false, force: true do |t|
    t.datetime "created"
    t.string   "description"
    t.text     "entry"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "updated"
  end

  create_table "_temp_copy", id: false, force: true do |t|
    t.datetime "created"
    t.string   "description"
    t.text     "entry"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "updated"
  end

  create_table "goal_priorities", force: true do |t|
    t.float    "priority"
    t.integer  "goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goal_resources", force: true do |t|
    t.string   "name"
    t.float    "allocation"
    t.integer  "goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.string   "title"
    t.date     "timeline_target_completion_date"
    t.string   "timeline_category"
    t.date     "completed_on"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "belief_statement"
  end

  create_table "journal_entries", force: true do |t|
    t.text     "entry"
    t.string   "description"
    t.integer  "journal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude",    precision: 10, scale: 6
    t.decimal  "longitude",   precision: 10, scale: 6
  end

  create_table "journals", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "identifier"
    t.string   "title"
    t.string   "type"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "source"
  end

  create_table "photos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "taken_at"
    t.decimal  "latitude",           precision: 10, scale: 6
    t.decimal  "longitude",          precision: 10, scale: 6
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "image_meta"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
