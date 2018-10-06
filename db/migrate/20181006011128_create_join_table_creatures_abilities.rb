class CreateJoinTableCreaturesAbilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :abilities do |t|
      # t.index [:creature_id, :ability_id]
      # t.index [:ability_id, :creature_id]
    end
  end
end
