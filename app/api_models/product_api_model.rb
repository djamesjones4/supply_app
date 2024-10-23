# frozen_string_literal: true

class ProductApiModel < BaseApiModel
  attr_reader :name, :description, :price, :sku, :product_category, :product_category_id, :product_inventory, :product_inventory_id

  def product_category
    @product_category_id ? ProductCategory.find(@product_category_id).name : nil
  end

  def product_inventory
    @product_inventory_id ? ProductInventory.find(@product_inventory_id).quantity : nil
  end
end
