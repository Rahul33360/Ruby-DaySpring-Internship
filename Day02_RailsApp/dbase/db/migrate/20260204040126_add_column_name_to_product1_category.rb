class AddColumnNameToProduct1Category < ActiveRecord::Migration[8.1]
  def change
    add_column :product1_categories, :name, :string
  end
end
