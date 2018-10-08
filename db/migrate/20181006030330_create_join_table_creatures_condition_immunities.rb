class CreateJoinTableCreaturesConditionImmunities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :condition_immunities do |t|
      t.references :creature, foreign_key: true
      t.references :condition_immunity, index: {name: "index_on_condition_immunity"}, foreign_key: true
    end

  end
end
