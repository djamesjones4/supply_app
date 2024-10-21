# == Schema Information
#
# Table name: payment_details
#
#  id          :bigint           not null, primary key
#  provider    :string           not null
#  status      :string
#  subtotal    :float            not null
#  tax_decimal :float            default(0.0), not null
#  total       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  order_id    :bigint           not null
#
class PaymentDetail < ApplicationRecord
end
