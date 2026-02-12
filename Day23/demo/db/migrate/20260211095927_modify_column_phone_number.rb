class ModifyColumnPhoneNumber < ActiveRecord::Migration[8.1]
  def change
    change_column :users, :phone_number, "integer USING phone_number::integer"
  end
end
