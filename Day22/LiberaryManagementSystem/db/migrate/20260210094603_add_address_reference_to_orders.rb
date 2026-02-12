class AddAddressReferenceToOrders < ActiveRecord::Migration[8.1]
  def change
    # add_reference :orders, :address, null: false, foreign_key: true
    add_reference :orders, :address, foreign_key: true
  end
end
