# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::Navigation::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Navigation::Component.new)
    assert_selector "div.irelia-navbar__navigation"
  end
end
