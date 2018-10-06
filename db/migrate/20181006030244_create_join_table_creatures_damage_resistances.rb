class CreateJoinTableCreaturesDamageResistances < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_resistances do |t|
      t.references :creature, foreign_key: true
      t.references :damage_resistance, index: {name: "index_on_damage_resistance"}, foreign_key: true
    end

  end
end
