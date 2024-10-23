# frozen_string_literal: true

module Types
  class UserAuthType < Types::BaseEnum
    description "User Type enum for auth"
    User.user_types.each do |key, _value|
      value(key, value: key)
    end
  end
end
