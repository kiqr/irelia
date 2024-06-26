# frozen_string_literal: true

require "test_helper"

class Irelia::Sidebar::Navigation::Link::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Sidebar::Navigation::Link::Component.new(url: "/foobar"))
    assert_selector "a.irelia-sidebar__navigation__link[href='/foobar']"
  end
end
