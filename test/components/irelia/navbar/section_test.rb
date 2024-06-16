# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::Separator::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Separator::Component.new)
    assert_selector "div.irelia-navbar__separator"
  end
end
