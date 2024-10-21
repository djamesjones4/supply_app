# == Schema Information
#
# Table name: user_payments
#
#  id           :bigint           not null, primary key
#  account_no   :integer
#  expiry       :date
#  payment_type :string           not null
#  provider     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_user_payments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserPayment < ApplicationRecord
  belongs_to :user
end
