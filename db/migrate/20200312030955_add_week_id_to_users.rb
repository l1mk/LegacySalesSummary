class AddWeekIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :week_id, :integer
  end
end
