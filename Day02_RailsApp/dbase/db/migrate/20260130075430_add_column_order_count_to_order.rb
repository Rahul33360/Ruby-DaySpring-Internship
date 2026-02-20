class AddColumnOrderCountToOrder < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :order_count, :integer
  end
end
