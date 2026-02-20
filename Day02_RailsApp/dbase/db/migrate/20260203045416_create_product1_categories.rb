class CreateProduct1Categories < ActiveRecord::Migration[8.1]
  def change
    create_table :product1_categories do |t|
      t.timestamps
    end
  end
end
