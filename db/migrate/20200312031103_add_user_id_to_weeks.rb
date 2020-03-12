class AddUserIdToWeeks < ActiveRecord::Migration[6.0]
  def change
    add_column :weeks, :user_id, :integer
  end
end
