class RemoveUselessInformationsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    remove_column :users, :surname, :string
    remove_column :users, :birth, :date
    remove_column :users, :sex, :string
    remove_column :users, :first_name, :string
  end
end
