# frozen_string_literal: true

require "test_helper"

class Irelia::Container::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Container::Component.new)
    assert_selector "div.irelia-container"
  end
end
