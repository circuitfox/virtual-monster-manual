class CreateJoinTableCreaturesDamageImmunities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_immunities do |t|
      # t.index [:creature_id, :damage_immunity_id]
      # t.index [:damage_immunity_id, :creature_id]
    end
  end
end
