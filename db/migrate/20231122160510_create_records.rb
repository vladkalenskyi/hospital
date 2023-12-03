class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.datetime :time
      t.text :recommendation
      t.references :doctor_id, foreign_key: {to_table: :users}
      t.references :patient_id, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
