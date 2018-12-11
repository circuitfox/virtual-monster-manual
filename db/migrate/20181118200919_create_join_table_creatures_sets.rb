class CreateJoinTableCreaturesSets < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :creature_sets do |t|
      t.references :creature, foreign_key: true
      t.references :creature_set, index: {name: "index_on_creature_set"}, foreign_key: true
  end
end
end
