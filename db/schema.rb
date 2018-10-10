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

ActiveRecord::Schema.define(version: 2018_10_06_030743) do

  create_table "abilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "abilities_creatures", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "ability_id"
    t.index ["ability_id"], name: "index_abilities_creatures_on_ability_id"
    t.index ["creature_id"], name: "index_abilities_creatures_on_creature_id"
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
    t.integer "speed", null: false
    t.integer "swim", null: false
    t.integer "burrow", null: false
    t.integer "climb", null: false
    t.integer "fly", null: false
    t.integer "strength", null: false
    t.integer "dexterity", null: false
    t.integer "constitution", null: false
    t.integer "intelligence", null: false
    t.integer "wisdom", null: false
    t.integer "charisma", null: false
    t.integer "str_saving", null: false
    t.integer "dex_saving", null: false
    t.integer "con_saving", null: false
    t.integer "int_saving", null: false
    t.integer "wis_saving", null: false
    t.integer "chr_asving", null: false
    t.integer "perception", null: false
    t.integer "blindsight", null: false
    t.integer "darkvision", null: false
    t.integer "tremorsense", null: false
    t.integer "truesight", null: false
    t.integer "challenge", null: false
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

  add_foreign_key "abilities_creatures", "abilities"
  add_foreign_key "abilities_creatures", "creatures"
  add_foreign_key "condition_immunities_creatures", "condition_immunities"
  add_foreign_key "condition_immunities_creatures", "creatures"
  add_foreign_key "creature_actions", "creatures"
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
end
