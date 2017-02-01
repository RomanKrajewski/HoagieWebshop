class CreateOrderAndSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :order_and_sandwiches do |t|
      t.belongs_to :sandwiches, index: true
      t.belongs_to :orders, index: true
    end
  end
end
