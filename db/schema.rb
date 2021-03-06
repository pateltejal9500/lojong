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

ActiveRecord::Schema.define(version: 20150217182402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: true do |t|
    t.string "name"
  end

  create_table "point_comments", force: true do |t|
    t.text    "point_comm"
    t.integer "point_id"
    t.integer "author_id"
  end

  create_table "points", force: true do |t|
    t.string "number"
    t.text   "point_text"
  end

  create_table "slogan_comments", force: true do |t|
    t.text    "slog_comm_long"
    t.integer "slogan_id"
    t.integer "author_id"
  end

  create_table "slogans", force: true do |t|
    t.integer "number"
    t.text    "slogan_text"
    t.integer "point_id"
    t.text    "slog_comm_short"
  end

end
