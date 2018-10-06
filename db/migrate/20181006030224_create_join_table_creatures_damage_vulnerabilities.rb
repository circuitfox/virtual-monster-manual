class CreateJoinTableCreaturesDamageVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :creatures, :damage_vulnerabilities do |t|
      t.references :creature, foreign_key: true
      t.references :damage_vulnerability, index: {name: "index_on_damage_vulnerability"}, foreign_key: true
    end

  end
end
