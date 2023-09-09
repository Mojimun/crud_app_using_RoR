class CreateDesignations < ActiveRecord::Migration[7.0]
  def change
    create_table :designations do |t|
      t.string :name
      t.integer :div_id
      t.boolean :active
      t.timestamps
    end
  end
end
