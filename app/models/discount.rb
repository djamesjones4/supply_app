# == Schema Information
#
# Table name: discounts
#
#  id               :bigint           not null, primary key
#  active           :boolean
#  deleted_at       :datetime
#  discount_percent :float
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Discount < ApplicationRecord
end
