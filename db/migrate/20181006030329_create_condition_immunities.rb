class CreateConditionImmunities < ActiveRecord::Migration[5.2]
  def change
    create_table :condition_immunities do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
