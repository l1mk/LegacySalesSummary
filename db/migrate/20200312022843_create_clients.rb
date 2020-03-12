class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :company
      t.string :dm
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
