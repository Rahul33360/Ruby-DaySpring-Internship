class AddColumnPhoneToCustomer1s < ActiveRecord::Migration[8.1]
  def change
    add_column :customer1s, :phone_number, :integer
  end
end
