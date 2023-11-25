class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :paternal_name
      t.integer :age
      t.string :sex
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
