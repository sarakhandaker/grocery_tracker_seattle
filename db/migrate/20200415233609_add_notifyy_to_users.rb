class AddNotifyyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notify, :boolean
  end
end
