class AddMonthtoWeeks < ActiveRecord::Migration[6.0]
  def change
    add_column :weeks, :month_id, :integer
  end
end
