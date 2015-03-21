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

ActiveRecord::Schema.define(version: 20150321022552) do

  create_table "comments", force: :cascade do |t|
    t.integer  "compliment_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["compliment_id"], name: "index_comments_on_compliment_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "compliments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "compliment_text"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "compliments", ["user_id"], name: "index_compliments_on_user_id"

  create_table "labels", force: :cascade do |t|
    t.string   "label_title"
    t.text     "label_description"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "labels", ["user_id"], name: "index_labels_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email_address"
    t.text     "profile_pic_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
