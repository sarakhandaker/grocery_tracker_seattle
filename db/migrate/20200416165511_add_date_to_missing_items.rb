class AddDateToMissingItems < ActiveRecord::Migration[6.0]
  def change
    add_column :missing_items, :date, :date_time
  end
end
