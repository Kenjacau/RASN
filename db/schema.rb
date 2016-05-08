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

ActiveRecord::Schema.define(version: 20160507223213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "music_genre"
    t.string   "location"
    t.boolean  "is_official"
    t.time     "duration"
    t.datetime "start_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "playlist_songs", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "song_id"
    t.integer  "priority"
    t.boolean  "marked"
    t.boolean  "played"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_requests", force: :cascade do |t|
    t.integer  "song_id"
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "genre"
    t.string   "title"
    t.string   "artist"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "location"
    t.string   "email",                  default: "",    null: false
    t.string   "gender"
    t.string   "favorite_genre"
    t.integer  "event_id"
    t.date     "birthday"
    t.string   "type"
    t.integer  "patron_points",          default: 0
    t.integer  "num_of_requests",        default: 1
    t.integer  "num_of_votes",           default: 3
    t.boolean  "is_vip",                 default: false
    t.integer  "num_of_events",          default: 2
    t.boolean  "is_authorized",          default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "playlist_song_id"
    t.integer  "patron_id"
    t.integer  "vote"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
