# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Component.new)
    assert_selector "section.irelia-navbar.irelia-navbar--default"
  end
end
