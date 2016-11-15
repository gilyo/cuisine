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

ActiveRecord::Schema.define(version: 20161114153855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",                              null: false
    t.integer  "cuisine",           default: 0,     null: false
    t.integer  "rating",            default: 0,     null: false
    t.integer  "delivery_time",     default: 0,     null: false
    t.boolean  "is_10bis_accepted", default: false, null: false
    t.text     "address",                           null: false
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["cuisine"], name: "index_restaurants_on_cuisine", using: :btree
  add_index "restaurants", ["delivery_time"], name: "index_restaurants_on_delivery_time", using: :btree
  add_index "restaurants", ["is_10bis_accepted"], name: "index_restaurants_on_is_10bis_accepted", using: :btree
  add_index "restaurants", ["name"], name: "index_restaurants_on_name", using: :btree

end
