# frozen_string_literal: true

require "rspec"
require "rails_helper"

describe UserService do

  describe "#create_new_user" do
    it "creates a new user" do
      result = described_class.create_new_user(first_name: "test", last_name: "user", email: "email@mail.com", user_type: "base")
      expect(result[:success]).to be true
    end
  end

end
