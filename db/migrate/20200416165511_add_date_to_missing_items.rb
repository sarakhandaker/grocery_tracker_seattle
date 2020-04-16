class AddDateToMissingItems < ActiveRecord::Migration[6.0]
  def change
    add_column :missing_items, :date, :datetime
  end
end
