class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.belongs_to :creature, index: true
      t.string :damage_dice, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.int :range, null: false

      t.timestamps
    end
  end
end
