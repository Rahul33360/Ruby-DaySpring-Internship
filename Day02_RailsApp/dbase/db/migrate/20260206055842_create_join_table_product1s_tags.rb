class CreateJoinTableProduct1sTags < ActiveRecord::Migration[8.1]
  def change
    # Day20
    create_join_table :product1s, :tags do |t|
      # t.index [:product_id, :tag_id]
      # t.index [:tag_id, :product_id]
    end
  end
end
