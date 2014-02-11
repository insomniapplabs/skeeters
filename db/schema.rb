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

ActiveRecord::Schema.define(version: 20140211022947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "start_time"
    t.string   "arrival"
    t.string   "opponent"
    t.string   "home_away"
    t.string   "game_type"
    t.string   "location"
    t.text     "notes"
    t.string   "event_type"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
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
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.integer  "invitations_count"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["invitation_token"], name: "index_members_on_invitation_token", unique: true, using: :btree
  add_index "members", ["invited_by_id"], name: "index_members_on_invited_by_id", using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "publish_on"
    t.integer  "member_id"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "player_first_name"
    t.string   "player_last_name"
    t.string   "player_number"
    t.string   "player_favorite_team"
    t.string   "player_favorite_player"
    t.string   "player_favorite_subject"
    t.string   "player_career"
    t.string   "player_favorite_song"
    t.string   "player_favorite_book"
    t.string   "player_favorite_movie"
    t.string   "player_favorite_food"
    t.string   "player_nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
