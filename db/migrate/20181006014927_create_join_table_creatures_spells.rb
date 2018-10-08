class CreateJoinTableCreaturesSpells < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :spells do |t|
      t.references :creature, foreign_key: true
      t.references :spell, foreign_key: true
    end
  end
end
