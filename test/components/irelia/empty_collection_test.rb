# frozen_string_literal: true

require "test_helper"

class Irelia::EmptyCollection::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::EmptyCollection::Component.new)
    assert_selector "div.irelia-empty-collection"
  end
end
