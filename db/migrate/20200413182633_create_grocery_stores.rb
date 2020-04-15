class CreateGroceryStores < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_stores do |t|
      t.string :chain
      t.string :address
    end
  end
end
