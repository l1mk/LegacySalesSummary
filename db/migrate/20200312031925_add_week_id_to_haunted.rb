class AddWeekIdToHaunted < ActiveRecord::Migration[6.0]
  def change
    add_column :haunteds, :week_id, :integer
    add_column :haunteds, :client_id, :integer
  end
end
