class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :dice, null: false
      t.int :level, null: false

      t.timestamps
    end
  end
end
