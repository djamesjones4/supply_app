# == Schema Information
#
# Table name: product_inventories
#
#  id         :bigint           not null, primary key
#  deleted_at :datetime
#  quantity   :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProductInventory < ApplicationRecord
end
