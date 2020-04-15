class CreateMissingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :missing_items do |t|
      t.integer :grocery_store_id
      t.integer :item_id

      t.timestamps
    end
  end
end
