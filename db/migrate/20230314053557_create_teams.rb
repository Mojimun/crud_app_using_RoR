class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.boolean :active
      t.boolean :default_team
      t.integer :div_id
      t.integer :org_id
      t.timestamps
    end
  end
end
