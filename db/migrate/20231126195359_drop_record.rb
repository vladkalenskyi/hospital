class DropRecord < ActiveRecord::Migration[7.0]
  def change
    drop_table :records
  end
end
