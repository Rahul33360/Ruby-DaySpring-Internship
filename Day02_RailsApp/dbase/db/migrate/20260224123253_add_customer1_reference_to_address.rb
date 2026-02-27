class AddCustomer1ReferenceToAddress < ActiveRecord::Migration[8.1]
  def change
    add_reference :addresses, :customer1, null: false, foreign_key: true
  end
end
