class CreateJoinTableCreaturesDamageImmunities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_immunities do |t|
      t.references :creature, foreign_key: true
      t.references :damage_immunity, foreign_key: true
    end
  end
end
