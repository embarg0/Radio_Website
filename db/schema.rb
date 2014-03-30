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

ActiveRecord::Schema.define(version: 20140327060019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.text     "description"
    t.string   "topic"
    t.integer  "rating"
    t.integer  "timeslots_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guest_id",     null: false
    t.string   "first_name"
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "band_id",      default: "-"
  end

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
  end

end
