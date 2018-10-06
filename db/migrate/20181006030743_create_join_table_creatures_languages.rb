class CreateJoinTableCreaturesLanguages < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :languages do |t|
      t.references :creature, foreign_key: true
      t.references :language, foreign_key: true
    end
  end
end
