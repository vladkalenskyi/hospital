class AddReception < ActiveRecord::Migration[7.0]
  def change
    create_table :receptions do |t|
      t.datetime :time
      t.text :recommendation
      t.references :doctor, foreign_key: { to_table: :users }
      t.references :patient, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end