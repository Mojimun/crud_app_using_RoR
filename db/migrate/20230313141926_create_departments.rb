class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :org_id, null: false 
      t.string :org_location_id, null: false
      t.string :name,  null: false 
      t.binary :active
      t.string :email, null: false 
      t.integer :team_count 
      t.integer :template_id
      t.timestamps
    end
  end
end
