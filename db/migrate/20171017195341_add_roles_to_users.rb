class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :integer, default: 0, null: false
    add_column :users, :username, :string, default: "Staff User", null: false
    add_column :users, :company_id, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_index :users, :username, unique: true
    add_reference :users, :company_account, index: true, foreign_key: true
  end
end
