class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :payment_type
      t.decimal :amount

      t.timestamps
    end
  end
end
