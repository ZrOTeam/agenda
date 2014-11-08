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

ActiveRecord::Schema.define(version: 20141107060809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.string   "first_name", default: "", null: false
    t.string   "last_name",  default: "", null: false
    t.date     "birthday"
    t.string   "email",      default: "", null: false
    t.string   "celphone",   default: "", null: false
    t.string   "phone",      default: "", null: false
    t.text     "address"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["celphone"], name: "index_contacts_on_celphone", using: :btree
  add_index "contacts", ["email"], name: "index_contacts_on_email", using: :btree
  add_index "contacts", ["first_name"], name: "index_contacts_on_first_name", using: :btree
  add_index "contacts", ["group_id"], name: "index_contacts_on_group_id", using: :btree
  add_index "contacts", ["last_name"], name: "index_contacts_on_last_name", using: :btree
  add_index "contacts", ["phone"], name: "index_contacts_on_phone", using: :btree
  add_index "contacts", ["user_id"], name: "index_contacts_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.date     "event_date"
    t.string   "name"
    t.text     "comments"
    t.boolean  "remember",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["contact_id"], name: "index_events_on_contact_id", using: :btree
  add_index "events", ["name"], name: "index_events_on_name", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "memos", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.boolean  "archived",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memos", ["user_id"], name: "index_memos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "fullname",               default: ""
    t.string   "celphone"
    t.string   "phone"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
