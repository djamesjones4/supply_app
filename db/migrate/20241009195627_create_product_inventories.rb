class CreateProductInventories < ActiveRecord::Migration[7.2]
  def change
    create_table :product_inventories do |t|
      t.bigint :quantity, null: false, default: 0
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
