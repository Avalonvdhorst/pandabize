# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_11_142929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bicycle_models", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicycles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "bicycle_model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicycle_model_id"], name: "index_bicycles_on_bicycle_model_id"
    t.index ["user_id"], name: "index_bicycles_on_user_id"
  end

  create_table "disabled_options", force: :cascade do |t|
    t.bigint "option_one_id", null: false
    t.bigint "option_two_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option_one_id"], name: "index_disabled_options_on_option_one_id"
    t.index ["option_two_id"], name: "index_disabled_options_on_option_two_id"
  end

  create_table "option_types", force: :cascade do |t|
    t.string "name"
    t.bigint "bicycle_model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicycle_model_id"], name: "index_option_types_on_bicycle_model_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "content"
    t.bigint "option_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option_type_id"], name: "index_options_on_option_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bicycles", "bicycle_models"
  add_foreign_key "bicycles", "users"
  add_foreign_key "disabled_options", "options", column: "option_one_id"
  add_foreign_key "disabled_options", "options", column: "option_two_id"
  add_foreign_key "option_types", "bicycle_models"
  add_foreign_key "options", "option_types"
end
