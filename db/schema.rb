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

ActiveRecord::Schema.define(version: 20130614053555) do

  create_table "character_classes", force: true do |t|
    t.string "name",                   null: false
    t.string "character_class_type"
    t.string "alignment"
    t.string "hit_die"
    t.text   "class_skills"
    t.string "skill_points"
    t.string "skill_points_ability"
    t.string "spell_stat"
    t.text   "proficiencies"
    t.string "spell_type"
    t.string "epic_feat_base_level"
    t.string "epic_feat_interval"
    t.text   "epic_feat_list"
    t.text   "epic_full_text"
    t.string "req_race"
    t.string "req_weapon_proficiency"
    t.string "req_base_attack_bonus"
    t.string "req_skill"
    t.string "req_feat"
    t.string "req_spells"
    t.string "req_languages"
    t.string "req_psionics"
    t.string "req_epic_feat"
    t.string "req_special"
    t.text   "spell_list_1"
    t.string "spell_list_2"
    t.string "spell_list_3"
    t.string "spell_list_4"
    t.string "spell_list_5"
    t.text   "full_text"
    t.string "reference"
  end

  add_index "character_classes", ["name"], name: "class_name_index"

  create_table "class_tables", force: true do |t|
    t.string "name",                  limit: nil, null: false
    t.string "level",                 limit: nil
    t.string "base_attack_bonus",     limit: nil
    t.string "fort_save",             limit: nil
    t.string "ref_save",              limit: nil
    t.string "will_save",             limit: nil
    t.string "caster_level",          limit: nil
    t.string "points_per_day",        limit: nil
    t.string "ac_bonus",              limit: nil
    t.string "flurry_of_blows",       limit: nil
    t.string "bonus_spells",          limit: nil
    t.string "powers_known",          limit: nil
    t.string "unarmored_speed_bonus", limit: nil
    t.string "unarmed_damage",        limit: nil
    t.string "power_level",           limit: nil
    t.string "special",               limit: nil
    t.string "slots_0",               limit: nil
    t.string "slots_1",               limit: nil
    t.string "slots_2",               limit: nil
    t.string "slots_3",               limit: nil
    t.string "slots_4",               limit: nil
    t.string "slots_5",               limit: nil
    t.string "slots_6",               limit: nil
    t.string "slots_7",               limit: nil
    t.string "slots_8",               limit: nil
    t.string "slots_9",               limit: nil
    t.string "spells_known_0",        limit: nil
    t.string "spells_known_1",        limit: nil
    t.string "spells_known_2",        limit: nil
    t.string "spells_known_3",        limit: nil
    t.string "spells_known_4",        limit: nil
    t.string "spells_known_5",        limit: nil
    t.string "spells_known_6",        limit: nil
    t.string "spells_known_7",        limit: nil
    t.string "spells_known_8",        limit: nil
    t.string "spells_known_9",        limit: nil
    t.string "reference",             limit: nil
  end

  add_index "class_tables", ["name"], name: "class_table_name_index"

  create_table "domains", force: true do |t|
    t.string "name",           limit: nil, null: false
    t.text   "granted_powers"
    t.string "spell_1",        limit: nil
    t.string "spell_2",        limit: nil
    t.string "spell_3",        limit: nil
    t.string "spell_4",        limit: nil
    t.string "spell_5",        limit: nil
    t.string "spell_6",        limit: nil
    t.string "spell_7",        limit: nil
    t.string "spell_8",        limit: nil
    t.string "spell_9",        limit: nil
    t.text   "full_text"
    t.string "reference",      limit: nil
  end

  add_index "domains", ["name"], name: "domain_name_index"

  create_table "equipment", force: true do |t|
    t.string "name",                        limit: nil, null: false
    t.string "family",                      limit: nil
    t.string "category",                    limit: nil
    t.string "subcategory",                 limit: nil
    t.string "cost",                        limit: nil
    t.string "dmg_s",                       limit: nil
    t.string "armor_shield_bonus",          limit: nil
    t.string "maximum_dex_bonus",           limit: nil
    t.string "dmg_m",                       limit: nil
    t.string "weight",                      limit: nil
    t.string "critical",                    limit: nil
    t.string "armor_check_penalty",         limit: nil
    t.string "arcane_spell_failure_chance", limit: nil
    t.string "range_increment",             limit: nil
    t.string "speed_30",                    limit: nil
    t.string "type",                        limit: nil
    t.string "speed_20",                    limit: nil
    t.text   "full_text"
    t.string "reference",                   limit: nil
  end

  add_index "equipment", ["name"], name: "equipment_name_index"

  create_table "feats", force: true do |t|
    t.string "name",         null: false
    t.string "feat_type"
    t.string "multiple"
    t.string "stack"
    t.string "choice"
    t.text   "prerequisite"
    t.text   "benefit"
    t.text   "normal"
    t.text   "special"
    t.text   "full_text"
    t.string "reference"
  end

  add_index "feats", ["name"], name: "feat_name_index"

  create_table "items", force: true do |t|
    t.string "name",             limit: nil, null: false
    t.string "category",         limit: nil
    t.string "subcategory",      limit: nil
    t.string "special_ability",  limit: nil
    t.string "aura",             limit: nil
    t.string "caster_level",     limit: nil
    t.string "price",            limit: nil
    t.string "manifester_level", limit: nil
    t.text   "prereq"
    t.string "cost",             limit: nil
    t.string "weight",           limit: nil
    t.text   "full_text"
    t.string "reference",        limit: nil
  end

  add_index "items", ["name"], name: "item_name_index"

  create_table "monsters", force: true do |t|
    t.string "family"
    t.string "name",              null: false
    t.string "altname"
    t.string "size"
    t.string "monster_type"
    t.string "descriptor"
    t.string "hit_dice"
    t.string "initiative"
    t.string "speed"
    t.string "armor_class"
    t.string "base_attack"
    t.string "grapple"
    t.string "attack"
    t.text   "full_attack"
    t.string "space"
    t.string "reach"
    t.string "special_attacks"
    t.text   "special_qualities"
    t.string "saves"
    t.string "abilities"
    t.text   "skills"
    t.string "bonus_feats"
    t.text   "feats"
    t.text   "epic_feats"
    t.string "environment"
    t.text   "organization"
    t.string "challenge_rating"
    t.string "treasure"
    t.string "alignment"
    t.string "advancement"
    t.string "level_adjustment"
    t.text   "special_abilities"
    t.text   "stat_block"
    t.text   "full_text"
    t.string "reference"
  end

  add_index "monsters", ["name"], name: "monster_name_index"

  create_table "powers", force: true do |t|
    t.string "name",              limit: nil, null: false
    t.string "discipline",        limit: nil
    t.string "subdiscipline",     limit: nil
    t.string "descriptor",        limit: nil
    t.string "level",             limit: nil
    t.string "display",           limit: nil
    t.string "manifesting_time",  limit: nil
    t.string "range",             limit: nil
    t.string "target",            limit: nil
    t.string "area",              limit: nil
    t.string "effect",            limit: nil
    t.string "duration",          limit: nil
    t.string "saving_throw",      limit: nil
    t.string "power_points",      limit: nil
    t.string "power_resistance",  limit: nil
    t.text   "short_description"
    t.text   "xp_cost"
    t.text   "description"
    t.text   "augment"
    t.text   "full_text"
    t.string "reference",         limit: nil
  end

  add_index "powers", ["name"], name: "power_name_index"

  create_table "skills", force: true do |t|
    t.string "name",        limit: nil, null: false
    t.text   "subtype"
    t.string "key_ability", limit: nil
    t.string "psionic",     limit: nil
    t.string "trained",     limit: nil
    t.string "armor_check", limit: nil
    t.text   "description"
    t.text   "skill_check"
    t.text   "action"
    t.text   "try_again"
    t.text   "special"
    t.text   "restriction"
    t.text   "synergy"
    t.text   "epic_use"
    t.text   "untrained"
    t.text   "full_text"
    t.string "reference",   limit: nil
  end

  add_index "skills", ["name"], name: "skill_name_index"

  create_table "spell_domains", force: true do |t|
    t.string "name"
  end

  create_table "spell_levels", force: true do |t|
    t.integer "spell_id"
    t.integer "spell_domain_id"
    t.integer "level"
  end

  create_table "spells", force: true do |t|
    t.string "name",                       limit: nil, null: false
    t.string "altname",                    limit: nil
    t.string "school",                     limit: nil
    t.string "subschool",                  limit: nil
    t.string "descriptor",                 limit: nil
    t.string "spellcraft_dc",              limit: nil
    t.string "level",                      limit: nil
    t.text   "components"
    t.string "casting_time",               limit: nil
    t.string "range",                      limit: nil
    t.string "target",                     limit: nil
    t.string "area",                       limit: nil
    t.string "effect",                     limit: nil
    t.string "duration",                   limit: nil
    t.string "saving_throw",               limit: nil
    t.string "spell_resistance",           limit: nil
    t.string "short_description",          limit: nil
    t.text   "to_develop"
    t.text   "material_components"
    t.string "arcane_material_components", limit: nil
    t.text   "focus"
    t.text   "description"
    t.text   "xp_cost"
    t.string "arcane_focus",               limit: nil
    t.string "wizard_focus",               limit: nil
    t.string "verbal_components",          limit: nil
    t.string "sorcerer_focus",             limit: nil
    t.string "bard_focus",                 limit: nil
    t.string "cleric_focus",               limit: nil
    t.string "druid_focus",                limit: nil
    t.text   "full_text"
    t.string "reference",                  limit: nil
  end

  add_index "spells", ["name"], name: "spell_name_index"

end
