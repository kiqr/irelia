# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::Navigation::Link::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Navigation::Link::Component.new(url: "/about"))
    assert_selector "a.irelia-navbar__navigation__link[href='/about']"
  end
end
