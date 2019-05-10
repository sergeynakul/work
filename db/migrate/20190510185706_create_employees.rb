class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :active
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
