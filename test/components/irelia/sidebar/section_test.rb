# frozen_string_literal: true

require "test_helper"

class Irelia::Sidebar::Section::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Sidebar::Section::Component.new)
    assert_selector "section.irelia-sidebar__section"
  end
end
