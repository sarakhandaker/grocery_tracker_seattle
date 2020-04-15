class AddLatLongToGroceryStore < ActiveRecord::Migration[6.0]
  def change
    add_column :grocery_stores, :latitude, :float
    add_column :grocery_stores, :longitude, :float
  end
end
