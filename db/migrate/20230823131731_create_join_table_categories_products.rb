class CreateJoinTableCategoriesProducts < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :admin_categories do |t|
      t.index [:product_id, :category_id]
      t.index [:category_id, :product_id]
    end
  end
end
