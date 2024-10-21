# == Schema Information
#
# Table name: discounts
#
#  id               :bigint           not null, primary key
#  active           :boolean          default(FALSE), not null
#  deleted_at       :datetime
#  discount_percent :float            default(0.0), not null
#  name             :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Discount < ApplicationRecord
end
