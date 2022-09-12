# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_11_170458) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "category"
    t.string "author"
    t.datetime "createdOn"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "blogs"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "blog_id"
    t.string "body"
    t.datetime "created_at"
  end

  create_table "logins", force: :cascade do |t|
    t.string "email"
    t.string "password"
  end

  create_table "user_categories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.string "password"
  end

end
