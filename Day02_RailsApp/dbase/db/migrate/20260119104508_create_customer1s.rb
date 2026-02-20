class CreateCustomer1s < ActiveRecord::Migration[8.1]
  def change
    create_table :customer1s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
