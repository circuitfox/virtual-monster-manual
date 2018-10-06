class CreateJoinTableCreaturesSpells < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :spells do |t|
      # t.index [:creature_id, :spell_id]
      # t.index [:spell_id, :creature_id]
    end
  end
end
