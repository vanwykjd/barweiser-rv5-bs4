class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :owner, :boolean, default: false
    add_column :users, :manager, :boolean, default: false
    add_column :users, :staff, :boolean, default: true
  end
end
