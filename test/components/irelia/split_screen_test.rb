# frozen_string_literal: true

require "test_helper"

class Irelia::SplitScreen::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::SplitScreen::Component.new)
    assert_selector "div.irelia-split-screen"
  end
end
