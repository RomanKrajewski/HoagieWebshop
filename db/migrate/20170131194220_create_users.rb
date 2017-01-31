class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :created_at
      t.string :billing_information
      t.string :billing_address
      t.string :delivery_address

      t.timestamps
    end
  end
end
