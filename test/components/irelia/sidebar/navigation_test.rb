# frozen_string_literal: true

require "test_helper"

class Irelia::Sidebar::Navigation::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Sidebar::Navigation::Component.new)
    assert_selector "section.irelia-sidebar__navigation"
  end
end
