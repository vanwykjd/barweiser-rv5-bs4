class CreateDashboards < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboards do |t|
      t.integer  :account_id
      
      t.timestamps
    end
    
    add_index :dashboards,       :account_id
    add_foreign_key :dashboards, :accounts
  end
end
