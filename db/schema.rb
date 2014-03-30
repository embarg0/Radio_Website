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

ActiveRecord::Schema.define(version: 20140330020015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", primary_key: "albumID", force: true do |t|
    t.string   "type"
    t.string   "label"
    t.date     "albumRecordingDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", primary_key: "artistID", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "stageName"
    t.string   "nationality"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bands", primary_key: "artistID", force: true do |t|
    t.string   "name"
    t.date     "stateYear"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", primary_key: "guestNum", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.text     "description"
    t.text     "topic"
    t.integer  "rating"
    t.integer  "timeSlotNum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", primary_key: "employeeNum", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "stageName"
    t.date     "dateOfBirth"
    t.integer  "rating"
    t.date     "contractStartDate"
    t.string   "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts_shows", primary_key: "contractNum", force: true do |t|
    t.string   "employeeNum"
    t.integer  "showNum"
    t.date     "hostStartYear"
    t.date     "hostStartMonth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "play_sheets", primary_key: "playSheetsNum", force: true do |t|
    t.date     "date"
    t.date     "dayofweek"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "shows", primary_key: "showNum", force: true do |t|
    t.string   "showName"
    t.string   "category"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_inventories", primary_key: "songID", force: true do |t|
    t.string   "title"
    t.integer  "cancon"
    t.string   "instrumental"
    t.integer  "artistID"
    t.integer  "albumID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_slots", primary_key: "timeslotsNum", force: true do |t|
    t.time     "startTime"
    t.time     "endTime"
    t.integer  "showNum"
    t.integer  "playsheetNum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", primary_key: "trackID", force: true do |t|
    t.string   "title"
    t.time     "startTime"
    t.time     "endTime"
    t.string   "type"
    t.integer  "songID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
