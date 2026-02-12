class RenameBlogToVlog < ActiveRecord::Migration[8.1]
  def change
    rename_table :blogs, :vlogs
  end
end
