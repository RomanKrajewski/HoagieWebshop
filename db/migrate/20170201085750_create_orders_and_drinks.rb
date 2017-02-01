class CreateOrdersAndDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_and_drinks do |t|
      t.belongs_to :order, index: true
      t.belongs_to :drink, index:true
    end
  end
end
