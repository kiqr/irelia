# frozen_string_literal: true

require "test_helper"

class Irelia::Navbar::Brand::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Navbar::Brand::Component.new)
    assert_selector "span.irelia-navbar__brand"
  end

  def test_renders_with_url
    render_inline(Irelia::Navbar::Brand::Component.new(url: "/about"))
    assert_selector "a.irelia-navbar__brand[href='/about']"
  end
end
