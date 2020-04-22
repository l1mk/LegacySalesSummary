class CreateHaunteds < ActiveRecord::Migration[6.0]
  def change
    create_table :haunteds do |t|
      t.string :payment, default: "Prepaid"
      t.integer :recap
      t.integer :order_number, default: 0
      t.date :date_of_the_order, default: Date.today
      t.integer :fds_amount, default: 0

      t.timestamps
    end
  end
end
