# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    description "Create a new user"

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true
    argument :user_type, Types::UserAuthType, required: true

    def resolve(**args)
      begin
        UserService.build.create_new_user(first_name: args[:first_name], last_name: args[:last_name], email: args[:email], user_type: args[:user_type])
      rescue StandardError => e
        raise BadRequestError, "Could not create user"
      end
      super
    end
  end
end
