# == Schema Information
#
# Table name: order_items
#
#  id               :bigint           not null, primary key
#  quantity         :integer          default(1), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  order_details_id :bigint           not null
#  product_id       :bigint           not null
#
# Indexes
#
#  index_order_items_on_order_details_id  (order_details_id)
#  index_order_items_on_product_id        (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_details_id => order_details.id)
#  fk_rails_...  (product_id => products.id)
#
class OrderItem < ApplicationRecord
  belongs_to :order_detail
  belongs_to :product
end
