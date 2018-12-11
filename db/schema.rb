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

ActiveRecord::Schema.define(version: 2018_12_11_144145) do

  create_table "abilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.string "name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creature_id"], name: "index_abilities_on_creature_id"
  end

  create_table "condition_immunities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condition_immunities_creatures", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "condition_immunity_id"
    t.index ["condition_immunity_id"], name: "index_on_condition_immunity"
    t.index ["creature_id"], name: "index_condition_immunities_creatures_on_creature_id"
  end

  create_table "creature_actions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.string "damage_dice", null: false
    t.string "name", null: false
    t.text "description", null: false
    t.integer "range", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creature_id"], name: "index_creature_actions_on_creature_id"
  end

  create_table "creature_sets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.boolean "private", default: false, null: false
    t.string "description"
    t.index ["user_id"], name: "index_creature_sets_on_user_id"
  end

  create_table "creature_sets_creatures", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "creature_set_id"
    t.index ["creature_id"], name: "index_creature_sets_creatures_on_creature_id"
    t.index ["creature_set_id"], name: "index_on_creature_set"
  end

  create_table "creatures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type", null: false
    t.string "subtype"
    t.integer "size", null: false
    t.string "alignment", null: false
    t.string "ac", null: false
    t.string "ac_type"
    t.integer "hp", null: false
    t.string "hp_dice", null: false
    t.integer "speed", default: 0, null: false
    t.integer "swim", default: 0, null: false
    t.integer "burrow", default: 0, null: false
    t.integer "climb", default: 0, null: false
    t.integer "fly", default: 0, null: false
    t.integer "strength", default: 0, null: false
    t.integer "dexterity", default: 0, null: false
    t.integer "constitution", default: 0, null: false
    t.integer "intellect", default: 0, null: false
    t.integer "wisdom", default: 0, null: false
    t.integer "charisma", default: 0, null: false
    t.integer "str_saving"
    t.integer "dex_saving"
    t.integer "con_saving"
    t.integer "int_saving"
    t.integer "wis_saving"
    t.integer "chr_saving"
    t.integer "perception", default: 0, null: false
    t.integer "blindsight", default: 0, null: false
    t.integer "darkvision", default: 0, null: false
    t.integer "tremorsense", default: 0, null: false
    t.integer "truesight", default: 0, null: false
    t.integer "challenge", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creatures_damage_immunities", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "damage_immunity_id"
    t.index ["creature_id"], name: "index_creatures_damage_immunities_on_creature_id"
    t.index ["damage_immunity_id"], name: "index_creatures_damage_immunities_on_damage_immunity_id"
  end

  create_table "creatures_damage_resistances", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "damage_resistance_id"
    t.index ["creature_id"], name: "index_creatures_damage_resistances_on_creature_id"
    t.index ["damage_resistance_id"], name: "index_on_damage_resistance"
  end

  create_table "creatures_damage_vulnerabilities", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "damage_vulnerability_id"
    t.index ["creature_id"], name: "index_creatures_damage_vulnerabilities_on_creature_id"
    t.index ["damage_vulnerability_id"], name: "index_on_damage_vulnerability"
  end

  create_table "creatures_languages", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "language_id"
    t.index ["creature_id"], name: "index_creatures_languages_on_creature_id"
    t.index ["language_id"], name: "index_creatures_languages_on_language_id"
  end

  create_table "creatures_spells", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "spell_id"
    t.index ["creature_id"], name: "index_creatures_spells_on_creature_id"
    t.index ["spell_id"], name: "index_creatures_spells_on_spell_id"
  end

  create_table "damage_immunities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "damage_resistances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "damage_vulnerabilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.string "name", null: false
    t.integer "bonus", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creature_id"], name: "index_skills_on_creature_id"
  end

  create_table "spells", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "dice", null: false
    t.integer "level", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "password_reset", default: false
  end

  add_foreign_key "abilities", "creatures"
  add_foreign_key "condition_immunities_creatures", "condition_immunities"
  add_foreign_key "condition_immunities_creatures", "creatures"
  add_foreign_key "creature_actions", "creatures"
  add_foreign_key "creature_sets", "users"
  add_foreign_key "creature_sets_creatures", "creature_sets"
  add_foreign_key "creature_sets_creatures", "creatures"
  add_foreign_key "creatures_damage_immunities", "creatures"
  add_foreign_key "creatures_damage_immunities", "damage_immunities"
  add_foreign_key "creatures_damage_resistances", "creatures"
  add_foreign_key "creatures_damage_resistances", "damage_resistances"
  add_foreign_key "creatures_damage_vulnerabilities", "creatures"
  add_foreign_key "creatures_damage_vulnerabilities", "damage_vulnerabilities"
  add_foreign_key "creatures_languages", "creatures"
  add_foreign_key "creatures_languages", "languages"
  add_foreign_key "creatures_spells", "creatures"
  add_foreign_key "creatures_spells", "spells"
  create_trigger("creatures_before_insert_row_tr", :generated => true, :compatibility => 1).
      on("creatures").
      before(:insert) do
    "SET NEW.name = LOWER(NEW.name);"
  end

  create_trigger("creatures_before_update_row_tr", :generated => true, :compatibility => 1).
      on("creatures").
      before(:update) do
    "SET NEW.name = LOWER(NEW.name);"
  end

end
