class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.integer :amount
      t.integer :recap
      t.date :date_of_visit

      t.timestamps
    end
  end
end
