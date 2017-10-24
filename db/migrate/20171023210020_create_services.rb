class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer  :plan_id
      t.string   :name
      
      t.timestamps
    end
    
    add_index :services,         :plan_id
    add_foreign_key :services,   :plans
  end
end
