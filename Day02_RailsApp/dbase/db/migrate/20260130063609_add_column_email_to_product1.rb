class AddColumnEmailToProduct1 < ActiveRecord::Migration[8.1]
  def change
    add_column :product1s, :email, :string
  end
end
