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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130320150052) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "conferences", :force => true do |t|
    t.string   "name"
    t.time     "time"
    t.date     "date"
    t.string   "category"
    t.string   "speaker"
    t.boolean  "obligatory"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "conferences_registrations", :id => false, :force => true do |t|
    t.integer "registration_id"
    t.integer "conference_id"
  end

  add_index "conferences_registrations", ["registration_id", "conference_id"], :name => "by_registration_conference"

  create_table "registrations", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "last2"
    t.string   "career"
    t.string   "level"
    t.string   "email"
    t.string   "ci"
    t.string   "city"
    t.string   "direction"
    t.string   "zona"
    t.string   "telephone"
    t.string   "cellphone"
    t.string   "other"
    t.text     "health"
    t.string   "apoderado"
    t.string   "parentesco"
    t.string   "telephoneapoderado"
    t.string   "directionapoderado"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
