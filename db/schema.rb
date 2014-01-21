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

ActiveRecord::Schema.define(version: 20140121051744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feeds", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds_photos", id: false, force: true do |t|
    t.integer "feed_id",  null: false
    t.integer "photo_id", null: false
  end

  add_index "feeds_photos", ["feed_id", "photo_id"], name: "index_feeds_photos_on_feed_id_and_photo_id", using: :btree
  add_index "feeds_photos", ["photo_id", "feed_id"], name: "index_feeds_photos_on_photo_id_and_feed_id", using: :btree

  create_table "photos", force: true do |t|
    t.text     "insta_id"
    t.text     "url"
    t.text     "photo_url"
    t.text     "filter"
    t.text     "description"
    t.integer  "likes"
    t.integer  "user_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "search_terms",   null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "is_user_search"
    t.string   "is_tag_search"
  end

  create_table "users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
