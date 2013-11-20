class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.boolean :active
      t.integer :account

      t.timestamps
    end
  end
end
