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

ActiveRecord::Schema[7.0].define(version: 2022_08_31_192609) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.decimal "price"
    t.bigint "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
    t.time "time"
    t.float "latitude"
    t.float "longitude"
    t.string "image"
    t.index ["genre_id"], name: "index_events_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "music_tastes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_music_tastes_on_genre_id"
    t.index ["user_id"], name: "index_music_tastes_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.float "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address"
    t.integer "age"
    t.string "provider"
    t.string "uid"
    t.string "picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.bigint "fav_genre_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fav_genre_id"], name: "index_users_on_fav_genre_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "genres"
  add_foreign_key "music_tastes", "genres"
  add_foreign_key "music_tastes", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "genres", column: "fav_genre_id"
end
