class CreateEntreprises < ActiveRecord::Migration[7.0]
  def change
    create_table :entreprises do |t|
      t.string :name
	    t.boolean :active
      t.timestamps
    end
  end
end
