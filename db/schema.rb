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

ActiveRecord::Schema.define(version: 20140327030428) do

  create_table "guests", force: true do |t|
    t.integer  "guestNum"
    t.string   "firstName"
    t.string   "lastName"
    t.text     "description"
    t.text     "topic"
    t.integer  "rating"
    t.integer  "timeslotNum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "employeeNum"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "stageName"
    t.date     "dateOfBirth"
    t.integer  "rating"
    t.date     "contractStartDate"
    t.integer  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "play_sheets", force: true do |t|
    t.integer  "playSheetNum"
    t.date     "date"
    t.string   "dateOfWeek"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.string   "name"
    t.string   "host"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_inventories", force: true do |t|
    t.integer  "songID"
    t.string   "title"
    t.integer  "cancon"
    t.integer  "instrumental"
    t.integer  "artistiID"
    t.integer  "albumID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
