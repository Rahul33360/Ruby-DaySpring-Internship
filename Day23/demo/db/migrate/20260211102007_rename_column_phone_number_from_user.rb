class RenameColumnPhoneNumberFromUser < ActiveRecord::Migration[8.1]
  def change
    rename_column :users, :phone_number, :phoneno
  end
end
