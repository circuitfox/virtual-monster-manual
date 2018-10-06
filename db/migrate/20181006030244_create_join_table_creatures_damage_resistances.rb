class CreateJoinTableCreaturesDamageResistances < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_resistances do |t|
      # t.index [:creature_id, :damage_resistance_id]
      # t.index [:damage_resistance_id, :creature_id]
    end
  end
end
