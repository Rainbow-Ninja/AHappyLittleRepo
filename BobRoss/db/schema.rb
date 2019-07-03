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

ActiveRecord::Schema.define(version: 2019_07_03_062441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatars", force: :cascade do |t|
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avatars_profiles", force: :cascade do |t|
    t.bigint "avatar_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avatar_id"], name: "index_avatars_profiles_on_avatar_id"
    t.index ["profile_id"], name: "index_avatars_profiles_on_profile_id"
  end

  create_table "colours", force: :cascade do |t|
    t.boolean "alizerancrimson"
    t.boolean "brightred"
    t.boolean "cadmiumyellow"
    t.boolean "darksienna"
    t.boolean "indianyellow"
    t.boolean "midnightblue"
    t.boolean "mountainmix"
    t.boolean "phthaloblue"
    t.boolean "phthalogreen"
    t.boolean "prussianblue"
    t.boolean "sapgreen"
    t.boolean "titaniumwhite"
    t.boolean "vandykebrown"
    t.boolean "yellowochre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colours_paintings", force: :cascade do |t|
    t.bigint "colour_id"
    t.bigint "painting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colour_id"], name: "index_colours_paintings_on_colour_id"
    t.index ["painting_id"], name: "index_colours_paintings_on_painting_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "painting_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["painting_id"], name: "index_comments_on_painting_id"
    t.index ["profile_id"], name: "index_comments_on_profile_id"
  end

  create_table "installs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_installs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true
  end

  create_table "paintings", force: :cascade do |t|
    t.boolean "trees"
    t.boolean "river"
    t.boolean "cabin"
    t.boolean "waterfall"
    t.boolean "guest"
    t.boolean "animalguest"
    t.string "startcolour"
    t.string "shape"
    t.integer "likes"
    t.string "picture"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_paintings_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avatars_profiles", "avatars"
  add_foreign_key "avatars_profiles", "profiles"
  add_foreign_key "colours_paintings", "colours"
  add_foreign_key "colours_paintings", "paintings"
  add_foreign_key "comments", "paintings"
  add_foreign_key "comments", "profiles"
  add_foreign_key "paintings", "profiles"
  add_foreign_key "profiles", "users"
end
