# == Schema Information
#
# Table name: order_details
#
#  id                 :bigint           not null, primary key
#  total              :float            not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  payment_details_id :bigint           not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_order_details_on_payment_details_id  (payment_details_id)
#  index_order_details_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (payment_details_id => payment_details.id)
#  fk_rails_...  (user_id => users.id)
#
class OrderDetail < ApplicationRecord
  belongs_to :user
  belongs_to :payment_detail
end
