# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  deleted_at  :datetime
#  description :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProductCategory < ApplicationRecord
end
