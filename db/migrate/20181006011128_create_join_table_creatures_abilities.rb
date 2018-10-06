class CreateJoinTableCreaturesAbilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :abilities do |t|
      t.references :creature, foreign_key: true
      t.references :ability, foreign_key: true
    end
  end
end
