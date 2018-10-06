class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name, null: false
      t.int :type, null: false
      t.string :subtype
      t.int :size, null: false
      t.string :alignment, null: false
      t.string :ac, null: false
      t.string :ac_type
      t.int :hp, null: false
      t.string :hp_dice, null: false
      t.int :speed, null: false
      t.int :swim, null: false
      t.int :burrow, null: false
      t.int :climb, null: false
      t.int :fly, null: false
      t.int :strength, null: false
      t.int :dexterity, null: false
      t.int :constitution, null: false
      t.int :intelligence, null: false
      t.int :wisdom, null: false
      t.int :charisma, null: false
      t.int :str_saving, null: false
      t.int :dex_saving, null: false
      t.int :con_saving, null: false
      t.int :int_saving, null: false
      t.int :wis_saving, null: false
      t.int :chr_asving, null: false
      t.int :perception, null: false
      t.int :blindsight, null: false
      t.int :darkvision, null: false
      t.int :tremorsense, null: false
      t.int :truesight, null: false
      t.int :challenge, null: false

      t.timestamps
    end
  end
end
