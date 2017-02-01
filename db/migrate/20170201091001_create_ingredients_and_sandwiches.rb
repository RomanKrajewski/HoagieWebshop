class CreateIngredientsAndSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients_and_sandwiches do |t|
      t.belongs_to :sandwiches, index: true
      t.belongs_to :ingredients, index: true
    end
  end
end
