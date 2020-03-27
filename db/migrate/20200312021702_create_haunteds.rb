class CreateHaunteds < ActiveRecord::Migration[6.0]
  def change
    create_table :haunteds do |t|
      t.string :payment
      t.integer :recap
      t.integer :order_number
      t.date :date_of_the_order
      t.integer :fds_amount

      t.timestamps
    end
  end
end
