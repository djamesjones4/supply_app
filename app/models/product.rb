# == Schema Information
#
# Table name: products
#
#  id                   :bigint           not null, primary key
#  deleted_at           :datetime
#  description          :string
#  name                 :string
#  price                :float
#  sku                  :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  discount_id          :bigint           not null
#  product_category_id  :bigint           not null
#  product_inventory_id :bigint           not null
#
# Indexes
#
#  index_products_on_discount_id           (discount_id)
#  index_products_on_product_category_id   (product_category_id)
#  index_products_on_product_inventory_id  (product_inventory_id)
#
# Foreign Keys
#
#  fk_rails_...  (discount_id => discounts.id)
#  fk_rails_...  (product_category_id => product_categories.id)
#  fk_rails_...  (product_inventory_id => product_inventories.id)
#
class Product < ApplicationRecord
  belongs_to :product_category
  belongs_to :product_inventory
  belongs_to :discount
end
