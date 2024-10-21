# == Schema Information
#
# Table name: user_addresses
#
#  id            :bigint           not null, primary key
#  address_line1 :string
#  address_line2 :string
#  city          :string
#  country       :string
#  postal_code   :string
#  state         :string
#  telephone     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_user_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserAddress < ApplicationRecord
  belongs_to :user
end