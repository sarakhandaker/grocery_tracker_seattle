class AddAsickDateToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sick_date, :datetime
  end
end
