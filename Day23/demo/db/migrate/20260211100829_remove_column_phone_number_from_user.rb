class RemoveColumnPhoneNumberFromUser < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :phone_number, :integer
  end
end
