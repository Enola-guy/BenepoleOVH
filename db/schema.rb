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

ActiveRecord::Schema.define(version: 20161214000906) do

  create_table "festivals", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "missions", force: :cascade do |t|
    t.string   "name"
    t.integer  "nombre_jour"
    t.integer  "nbr_ideal_bnvl"
    t.integer  "duree_shift"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "personnes", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birthdate"
    t.string   "phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "personnes", ["email"], name: "index_personnes_on_email", unique: true
  add_index "personnes", ["reset_password_token"], name: "index_personnes_on_reset_password_token", unique: true

  create_table "rapports", force: :cascade do |t|
    t.text     "comment"
    t.boolean  "blacklist"
    t.integer  "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "date_debut"
    t.text     "quels_jours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
