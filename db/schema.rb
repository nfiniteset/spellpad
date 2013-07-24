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

ActiveRecord::Schema.define(version: 20130724005544) do

  create_table "character_classes", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_spells", force: true do |t|
    t.integer  "character_id"
    t.integer  "spell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.integer  "character_class_id", null: false
    t.string   "name",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cleric_domains", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spell_levels", force: true do |t|
    t.integer  "spell_id"
    t.integer  "spell_class_id"
    t.string   "spell_class_type"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", force: true do |t|
    t.string   "name"
    t.string   "altname"
    t.string   "school"
    t.string   "subschool"
    t.string   "descriptor"
    t.string   "spellcraft_dc"
    t.string   "level"
    t.text     "components"
    t.string   "casting_time"
    t.string   "range"
    t.string   "target"
    t.string   "area"
    t.string   "effect"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "spell_resistance"
    t.string   "short_description"
    t.text     "to_develop"
    t.text     "material_components"
    t.string   "arcane_material_components"
    t.text     "focus"
    t.text     "xp_cost"
    t.string   "arcane_focus"
    t.string   "wizard_focus"
    t.string   "verbal_components"
    t.string   "sorcerer_focus"
    t.string   "bard_focus"
    t.string   "cleric_focus"
    t.string   "druid_focus"
    t.string   "reference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

end
