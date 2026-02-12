class DropTableDummy < ActiveRecord::Migration[8.1]
  def change
    drop_table :table_dummies do |t|
      t.timestamps
    end
  end
end
