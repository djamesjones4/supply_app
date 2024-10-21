class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :sku, null: false
      t.references :product_category, null: false, foreign_key: true
      t.references :product_inventory, null: false, foreign_key: true
      t.float :price, null: false, default: 0.00
      t.references :discount, null: false, foreign_key: true
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
