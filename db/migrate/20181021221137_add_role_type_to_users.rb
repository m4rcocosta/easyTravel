class AddRoleTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :roletype, :boolean
  end
end
