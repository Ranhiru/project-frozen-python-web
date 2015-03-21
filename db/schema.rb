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

ActiveRecord::Schema.define(version: 20150322021212) do

  create_table "comments", force: :cascade do |t|
    t.integer  "compliment_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["compliment_id"], name: "index_comments_on_compliment_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "compliment_labels", force: :cascade do |t|
    t.integer  "compliment_id"
    t.integer  "label_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "compliment_labels", ["compliment_id", "label_id"], name: "index_compliment_labels_on_compliment_id_and_label_id", unique: true
  add_index "compliment_labels", ["compliment_id"], name: "index_compliment_labels_on_compliment_id"
  add_index "compliment_labels", ["label_id"], name: "index_compliment_labels_on_label_id"
  add_index "compliment_labels", ["user_id"], name: "index_compliment_labels_on_user_id"

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

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "compliment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["compliment_id"], name: "index_likes_on_compliment_id"
  add_index "likes", ["user_id", "compliment_id"], name: "index_likes_on_user_id_and_compliment_id", unique: true
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email_address"
    t.text     "profile_pic_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email_address"], name: "index_users_on_email_address", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
