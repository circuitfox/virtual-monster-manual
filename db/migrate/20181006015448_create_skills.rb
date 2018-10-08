class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.belongs_to :creature, index: true
      t.string :name, null: false
      t.integer :bonus, null: false

      t.timestamps
    end
  end
end
