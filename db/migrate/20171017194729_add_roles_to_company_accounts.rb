class AddRolesToCompanyAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :company_accounts, :role, :string, default: "owner"
  end
end
