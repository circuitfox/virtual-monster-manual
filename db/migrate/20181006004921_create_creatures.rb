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
      t.integer :speed, null: false
      t.integer :swim, null: false
      t.integer :burrow, null: false
      t.integer :climb, null: false
      t.integer :fly, null: false
      t.integer :strength, null: false
      t.integer :dexterity, null: false
      t.integer :constitution, null: false
      t.integer :intelligence, null: false
      t.integer :wisdom, null: false
      t.integer :charisma, null: false
      t.integer :str_saving, null: false
      t.integer :dex_saving, null: false
      t.integer :con_saving, null: false
      t.integer :int_saving, null: false
      t.integer :wis_saving, null: false
      t.integer :chr_asving, null: false
      t.integer :perception, null: false
      t.integer :blindsight, null: false
      t.integer :darkvision, null: false
      t.integer :tremorsense, null: false
      t.integer :truesight, null: false
      t.integer :challenge, null: false

      t.timestamps
    end
  end
end
