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

ActiveRecord::Schema.define(version: 2018_11_07_145841) do

  create_table "emotions", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.text "src"
    t.text "size"
    t.string "permalink", limit: 8, null: false
    t.timestamp "updated_at"
    t.timestamp "created_at"
  end

  create_table "recognitions", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.bigint "user_id"
    t.bigint "emotion_id"
    t.string "device"
    t.timestamp "updated_at"
    t.timestamp "created_at"
    t.index ["emotion_id"], name: "fk_rails_a4edcb3f60"
    t.index ["user_id"], name: "fk_rails_6d94b3d628"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.text "email"
    t.text "country"
    t.text "phone"
    t.timestamp "created_at"
  end

  add_foreign_key "recognitions", "emotions"
  add_foreign_key "recognitions", "users"
end
