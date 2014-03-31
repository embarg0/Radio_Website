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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140327060019) do
=======
ActiveRecord::Schema.define(version: 20140331002249) do
>>>>>>> FETCH_HEAD

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "albums", id: false, force: true do |t|
    t.string "album_id",             null: false
    t.string "genre"
    t.string "label"
    t.date   "album_recording_date"
  end

  create_table "artists", id: false, force: true do |t|
    t.string "artist_id",     null: false
    t.string "first_name"
    t.string "last_name"
    t.string "stage_name"
    t.string "nationality"
    t.date   "date_of_birth"
  end

  create_table "bands", id: false, force: true do |t|
    t.string  "band_name"
    t.integer "start_year"
    t.string  "nationality"
    t.string  "band_id",     null: false
  end

  create_table "guests", id: false, force: true do |t|
    t.string   "last_name"
=======
  create_table "albums", force: true do |t|
    t.string   "type"
    t.string   "label"
    t.date     "albumRecordingDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "stageName"
    t.string   "nationality"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bands", force: true do |t|
    t.string   "name"
    t.integer  "startYear"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
>>>>>>> FETCH_HEAD
    t.text     "description"
    t.string   "topic"
    t.integer  "rating"
<<<<<<< HEAD
    t.integer  "timeslots_id"
=======
    t.integer  "time_slot_id"
>>>>>>> FETCH_HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guest_id",     null: false
    t.string   "first_name"
  end

<<<<<<< HEAD
  create_table "hosts", id: false, force: true do |t|
    t.integer "host_id",             null: false
    t.string  "last_name"
    t.string  "stage_name"
    t.date    "date_of_birth"
    t.integer "rating"
    t.date    "contract_start_date"
    t.float   "salary"
    t.string  "first_name"
    t.date    "date_last_hosted"
  end

  create_table "hosts_shows", primary_key: "contract_number", force: true do |t|
    t.integer  "host_id"
    t.integer  "show_id"
=======
  create_table "host_shows", force: true do |t|
    t.date     "hostStartYear"
    t.date     "hostStartMonth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
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

  create_table "hosts_shows", force: true do |t|
    t.date     "hostStartYear"
    t.date     "hostStartMonth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "play_sheets", force: true do |t|
    t.date     "date"
    t.date     "dayofweek"
>>>>>>> FETCH_HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "host_start_date"
  end

  create_table "pg_search_documents", force: true do |t|
    t.text     "content"
    t.string   "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playsheets", id: false, force: true do |t|
    t.string  "day_of_week"
    t.integer "playsheet_id",   null: false
    t.date    "playsheet_date"
  end

<<<<<<< HEAD
  create_table "shows", id: false, force: true do |t|
    t.integer "show_id",     null: false
    t.string  "show_name"
    t.text    "description"
    t.string  "category"
  end

  create_table "songs", primary_key: "song_id", force: true do |t|
    t.string   "title"
    t.boolean  "cancon"
    t.boolean  "instrumental"
    t.string   "album_id"
    t.string   "artist_id"
=======
  create_table "shows", force: true do |t|
    t.string   "showName"
    t.string   "category"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_inventories", force: true do |t|
    t.string   "title"
    t.integer  "cancon"
    t.string   "instrumental"
    t.integer  "album_id"
    t.integer  "artist_id"
    t.integer  "band_id"
    t.integer  "track_id"
>>>>>>> FETCH_HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "band_id",      default: "-"
  end

<<<<<<< HEAD
  create_table "timeslots", id: false, force: true do |t|
    t.integer "timeslots_id", null: false
    t.time    "start_time"
    t.time    "end_time"
    t.integer "show_id"
    t.integer "playsheet_id"
  end

  create_table "tracks", id: false, force: true do |t|
    t.string  "track_id",     null: false
    t.string  "title"
    t.time    "start_time"
    t.time    "end_time"
    t.string  "genre"
    t.integer "song_id"
    t.integer "playsheet_id"
=======
  create_table "time_slots", force: true do |t|
    t.time     "startTime"
    t.time     "endTime"
    t.integer  "show_id"
    t.integer  "play_sheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.time     "startTime"
    t.time     "endTime"
    t.string   "type"
    t.integer  "play_sheet_id"
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
>>>>>>> FETCH_HEAD
  end

end
