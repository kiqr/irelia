# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::Section::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Section::Component.new)
    assert_selector "div.irelia-navbar__section.irelia-navbar__section--default"
  end
end
