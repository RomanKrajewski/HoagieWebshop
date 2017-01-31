class CreateSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches do |t|
      t.string :bread_type
      t.string :sauce
      t.decimal :price

      t.timestamps
    end
  end
end
