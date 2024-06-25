# frozen_string_literal: true

require "test_helper"

class Irelia::Sidebar::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Sidebar::Component.new)
    assert_selector "aside.irelia-sidebar"
  end
end
