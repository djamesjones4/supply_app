class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.references :product_category_id, null: false, foreign_key: true
      t.references :product_inventory_id, null: false, foreign_key: true
      t.float :price
      t.references :discount_id, null: false, foreign_key: true
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
