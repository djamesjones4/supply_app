# frozen_string_literal: true

class BaseApiModel
  # rubocop:disable Lint/MissingSuper

  def initialize(active_record_object)
    active_record_object.attributes.each do |key, value|
      instance_variable_set("@#{key}", value) if respond_to? key.to_sym
    end
  end

  # rubocop:enable Lint/MissingSuper
end