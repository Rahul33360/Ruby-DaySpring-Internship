class AddReferenceColumnToOrder < ActiveRecord::Migration[8.1]
  def change
    # add_reference :orders, :customer1, null: false, foreign_key: true
    add_reference :orders, :customer1, index: {unique:true}, foreign_key: true
  end
end
