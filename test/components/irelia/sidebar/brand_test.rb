# frozen_string_literal: true

require "test_helper"

class Irelia::Sidebar::Brand::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Sidebar::Brand::Component.new)
    assert_selector "section.irelia-sidebar__brand"
  end

  def test_renders_with_url
    render_inline(Irelia::Sidebar::Brand::Component.new(url: "#"))
    assert_selector "section.irelia-sidebar__brand"
  end
end
