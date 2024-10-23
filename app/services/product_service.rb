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
end
