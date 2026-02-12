class CreateTableDummy < ActiveRecord::Migration[8.1]
  def change
    create_table :table_dummies do |t|
      t.timestamps
    end
  end
end