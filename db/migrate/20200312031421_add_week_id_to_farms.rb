class AddWeekIdToFarms < ActiveRecord::Migration[6.0]
  def change
    add_column :farms, :week_id, :integer
    add_column :farms, :client_id, :integer
    add_column :farms, :user_id, :integer
  end
end
