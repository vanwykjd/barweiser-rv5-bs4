class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string   :name
      t.integer  :price

      t.timestamps
    end
    
    
  end
end
