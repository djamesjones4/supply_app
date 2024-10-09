class Product < ApplicationRecord
  belongs_to :product_category_id
  belongs_to :product_inventory_id
  belongs_to :discount_id
end
