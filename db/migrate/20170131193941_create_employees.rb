class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :employee_type
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
