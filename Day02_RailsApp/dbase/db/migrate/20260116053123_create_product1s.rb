class CreateProduct1s < ActiveRecord::Migration[8.1]
  def change
    create_table :product1s do |t|
      t.string :name
      t.text :descripition
      t.decimal :price
      t.integer :stock
      t.boolean :is_active

      t.timestamps
    end
  end
end
