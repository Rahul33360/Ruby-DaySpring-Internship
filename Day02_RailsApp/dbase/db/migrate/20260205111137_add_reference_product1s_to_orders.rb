class AddReferenceProduct1sToOrders < ActiveRecord::Migration[8.1]
  def change
    add_reference :orders, :product1, null: true, foreign_key: true
  end
end
