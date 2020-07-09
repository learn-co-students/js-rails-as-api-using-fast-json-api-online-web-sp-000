# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
#oduce the Fast JSON API
The Fast JSON API is a JSON serializer for Rails APIs. It provides a way for us to generate serializer classes for each resource object in our API that is involved in customized JSON rendering. We can use these serializer classes to define the specific attributes we want objects to share or not share, along with things like related object attributes.

The result is that in our controller actions, rather than writing a custom render each time, we write out a serializer for each object once and use Fast
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_14_163908) do

  create_table "birds", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.integer "bird_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bird_id"], name: "index_sightings_on_bird_id"
    t.index ["location_id"], name: "index_sightings_on_location_id"
  end

end
