class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.string :grocery_store_id
      t.string :integer
      t.string :notes
      t.datetime :date

      t.timestamps
    end
  end
end
