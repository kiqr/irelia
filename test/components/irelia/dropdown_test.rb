# frozen_string_literal: true

require "test_helper"

class Irelia::Dropdown::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Dropdown::Component.new)
    assert_selector "span.irelia-dropdown"
  end
end
