class AddColumnBirthDateToCustomer1 < ActiveRecord::Migration[8.1]
  def change
    add_column :customer1s, :birth_date, :date
  end
end
