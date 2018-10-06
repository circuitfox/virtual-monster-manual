class CreateJoinTableCreaturesLanguages < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :languages do |t|
      # t.index [:creature_id, :language_id]
      # t.index [:language_id, :creature_id]
    end
  end
end
