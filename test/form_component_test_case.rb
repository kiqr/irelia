# frozen_string_literal: true

require "test_helper"

class FormComponentTestCase < ViewComponent::TestCase
  def setup
    # Mocking the object and object_name
    @object = User.new
    @object_name = "user"
  end
end
