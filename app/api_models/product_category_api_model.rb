# frozen_string_literal: true

class ProductCategoryApiModel < BaseApiModel
  attr_reader :id, :name, :description, :deleted_at, :created_at, :updated_at
end
