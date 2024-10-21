class CreateProductCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :product_categories do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
