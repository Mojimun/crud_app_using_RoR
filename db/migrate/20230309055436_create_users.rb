class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :email,                null: false
      t.string :phone_number,                null: false
      t.text :image         
      t.string :entreprise
      t.integer :entreprise_id
      t.string :department
      t.integer :department_id
      t.string :team
      t.integer :team_id
      t.string :designation
      t.integer :designation_id
      t.date :date_of_joining
      t.string :type_of_contract
      t.string :end_contract_date
      t.string :type_of_worker
      t.integer :working_time
      t.string :role
      t.integer :role_id
      t.boolean :cl
      t.boolean :sl
      t.timestamps
    end
    add_index :users, :email,                unique: true
  end
end
