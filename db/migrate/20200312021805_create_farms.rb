class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.integer :amount, default: 0
      t.integer :recap
      t.date :date_of_visit, :default => Date.today

      t.timestamps
    end
  end
end
