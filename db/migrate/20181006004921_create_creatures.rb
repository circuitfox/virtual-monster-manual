class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name, null: false
      t.integer :type, null: false
      t.string :subtype
      t.integer :size, null: false
      t.string :alignment, null: false
      t.string :ac, null: false
      t.string :ac_type
      t.integer :hp, null: false
      t.string :hp_dice, null: false
      t.integer :speed, null: false, default: 0
      t.integer :swim, null: false, default: 0
      t.integer :burrow, null: false, default: 0
      t.integer :climb, null: false, default: 0
      t.integer :fly, null: false, default: 0
      t.integer :strength, null: false, default: 0
      t.integer :dexterity, null: false, default: 0
      t.integer :constitution, null: false, default: 0
      t.integer :intellect, null: false, default: 0
      t.integer :wisdom, null: false, default: 0
      t.integer :charisma, null: false, default: 0
      t.integer :str_saving
      t.integer :dex_saving
      t.integer :con_saving
      t.integer :int_saving
      t.integer :wis_saving
      t.integer :chr_saving
      t.integer :perception, null: false, default: 0
      t.integer :blindsight, null: false, default: 0
      t.integer :darkvision, null: false, default: 0
      t.integer :tremorsense, null: false, default: 0
      t.integer :truesight, null: false, default: 0
      t.integer :challenge, null: false, default: 0

      t.timestamps
    end
  end
end
