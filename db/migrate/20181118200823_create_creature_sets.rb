class CreateCreatureSets < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_sets do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name, null: false
      #not saure how to do private and public
    end
  end
end
