class AddDaniToUsers2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :specialty, :string
    add_column :users, :specialty, :string, default: 'Patient'
  end
end
