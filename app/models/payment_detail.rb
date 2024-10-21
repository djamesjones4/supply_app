# == Schema Information
#
# Table name: payment_details
#
#  id         :bigint           not null, primary key
#  provider   :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint
#
class PaymentDetail < ApplicationRecord
end
