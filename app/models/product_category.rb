# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  deleted_at  :datetime
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProductCategory < ApplicationRecord
end