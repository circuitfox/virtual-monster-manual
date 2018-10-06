class CreateJoinTableCreaturesDamageVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_vulnerabilities do |t|
      # t.index [:creature_id, :damage_vulnerability_id]
      # t.index [:damage_vulnerability_id, :creature_id]
    end
  end
end
