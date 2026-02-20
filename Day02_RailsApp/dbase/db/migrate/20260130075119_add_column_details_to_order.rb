class AddColumnDetailsToOrder < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :details, :string
  end
end
