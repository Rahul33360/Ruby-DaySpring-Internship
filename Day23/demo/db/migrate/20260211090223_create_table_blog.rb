class CreateTableBlog < ActiveRecord::Migration[8.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :discription

      t.timestamps
    end
    add_index :blogs, :title
  end
end
