class CreateAdminCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
