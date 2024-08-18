# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    description "Create a new user"

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true
    # argument :user_type, Graphql
  end
end
