# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  points     :integer
#  user_type  :enum             default(NULL)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ActiveRecord::Base

  enum user_type: %w[base admin super_admin admin_read_only]

  def user_type=(val)
    user_type = case val
                when 0, "base",
                  "base"
                when 1, "admin"
                  "admin"
                when 2, "super_admin"
                  "super_admin"
                when 3, "admin_read_only"
                  "admin_read_only"
                end
  end
end
