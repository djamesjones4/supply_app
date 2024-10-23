# frozen_string_literal: true

require 'rails_helper'

describe ProductCategoryApiModel do
  it "sets instance variables and attributes" do
    record = ProductCategory.new(name: 'product', description: 'category')
    result = described_class.new(record)

    expect(result).to be_an_instance_of(ProductCategoryApiModel)
    expect(result.instance_variable_names).to eq %w[@id @name @description @deleted_at @created_at @updated_at]
    expect(result.name).to eq 'product'
    expect(result.description).to eq 'category'
  end
end
