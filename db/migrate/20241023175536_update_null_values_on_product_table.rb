class UpdateNullValuesOnProductTable < ActiveRecord::Migration[7.2]
  def change
    change_column_null :products, :product_inventory_id, true
    change_column_null :products, :product_inventory_id, true
    change_column_null :products, :product_category_id, true
    change_column_null :products, :sku, true
    change_column_null :products, :discount_id, true
  end
end