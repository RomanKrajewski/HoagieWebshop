class CreateSandwichesAndSauces < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches_and_sauces do |t|
      t.belongs_to :sandwiches, index: true
      t.belongs_to :sauces, index: true
    end
  end
end
