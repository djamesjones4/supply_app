# frozen_string_literal: true

class ProductService
  def self.create_product_category(name, description)
    category = ProductCategory.create!(name: name, description: description)

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
    ProductCategory.all.each do |category| category.to_json end
  end
end
