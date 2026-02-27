class CreateAddresses < ActiveRecord::Migration[8.1]
  def change
    create_table :addresses do |t|
      t.string :address_one
      t.string :address_two

      t.timestamps
    end
  end
end
