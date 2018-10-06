class CreateJoinTableCreaturesConditionImmunities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :condition_immunities do |t|
      # t.index [:creature_id, :condition_immunity_id]
      # t.index [:condition_immunity_id, :creature_id]
    end
  end
end
