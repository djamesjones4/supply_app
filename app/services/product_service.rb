# frozen_string_literal: true

class ProductService
  def self.create_product_category(name, description)
    category = ProductCategory.new(name: name, description: description)

    if category.save
      {
        success: true,
        name: category.name,
        description: category.description
      }
    else
      Rails.logger.error("Create new product category error: ")
      raise CreateProductCategoryException, "Unable to create a new category."
    end
  end

  def self.get_product_categories
    categories = ProductCategory.all
    category_list = []
      categories.each do |category|
        category_list << ProductCategoryApiModel.new(category)
    end
    category_list
  end

  def self.create_product(name:, description:, price:, sku: nil, has_inventory: false, product_category_id: nil, product_inventory_id: nil)
    return nil unless name && description && price

    if has_inventory == true && product_inventory_id == nil
      # create_product_inventory
      new_product_inventory = create_product_inventory
    end
    # create product
    begin
      product = Product.create!(
        {
          name: name,
          description: description,
          sku: sku,
          price: price,
          product_category_id: product_category_id,
          product_inventory_id: product_inventory_id || new_product_inventory.id
        })
    rescue => e
      Rails.logger.error("Failed to create product: #{e}")
      raise CreateProductException, "Could not create product: #{e}"
    end
    # return ProductApiModel
    ProductApiModel.new(product)
  end

  def add_product_to_category(category_id, product_id)
    # add a product category
  end

  private

  def self.create_product_inventory
    # create_product_inventory row
    begin
      ProductInventory.create!(quantity: 0 )
    rescue => e
      Rails.logger.error("Failed to create product inventory error: #{e}")
      raise CreateProductInventoryException, "Could not create product inventory: #{e}"
    end
  end

  def update_product_inventory_quantity(inventory_id, quantity)
    # decrease or increase product_inventory by amount given in quantity
  end
end
