# frozen_string_literal: true

require "rails_helper"

describe ProductService do
  describe "#create_product_category" do
    it "creates a new product category" do
      new_category = described_class.create_product_category("Mens Shirts", "Shirts for men")
      expect(new_category[:success]).to eq true
      expect(new_category[:name]).to eq "Mens Shirts"
      expect(new_category[:description]).to eq "Shirts for men"
    end
  end

  describe "get_product_categories" do
    it "returns an array of product categories" do
      described_class.create_product_category("Mens Shirts", "Shirts for men")
      result = described_class.get_product_categories
      expect(result[0]).to be_an_instance_of ProductCategory
    end
  end
end
