class AddDaniToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :patronymic, :string
    add_column :users, :specialty, :string
    add_column :users, :category, :string
  end
end
