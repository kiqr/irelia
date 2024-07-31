# frozen_string_literal: true

require "test_helper"

class Irelia::Navigation::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navigation::Component.new)
    assert_selector "div.irelia-navigation"
  end
end
