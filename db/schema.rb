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

ActiveRecord::Schema.define(version: 2021_03_07_083400) do

  create_table "hosting_accounts", force: :cascade do |t|
    t.string "type", null: false
    t.string "username"
    t.string "password"
    t.string "workspace"
    t.string "token"
    t.string "organization"
    t.string "custom_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lock_files", force: :cascade do |t|
    t.integer "repository_id", null: false
    t.string "path", null: false
    t.text "content"
    t.string "custom_name"
    t.datetime "timestamp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["repository_id"], name: "index_lock_files_on_repository_id"
  end

  create_table "repositories", force: :cascade do |t|
    t.integer "hosting_account_id", null: false
    t.string "uuid", null: false
    t.string "name", null: false
    t.string "custom_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hosting_account_id"], name: "index_repositories_on_hosting_account_id"
  end

  add_foreign_key "lock_files", "repositories"
  add_foreign_key "repositories", "hosting_accounts"
end
