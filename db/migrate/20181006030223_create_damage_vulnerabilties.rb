class CreateDamageVulnerabilties < ActiveRecord::Migration[5.2]
  def change
    create_table :damage_vulnerabilties do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
