ActiveRecord::Schema.define(version: 20160916170521) do

  create_table "shouts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "body"
  end

  add_index "shouts", ["user_id"], name: "index_shouts_on_user_id"

  create_table "text_shouts", force: :cascade do |t|
    t.string "body"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["username"], name: "index_users_on_username"

end
