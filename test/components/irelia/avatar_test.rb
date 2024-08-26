# frozen_string_literal: true

require "test_helper"

class Irelia::Avatar::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Avatar::Component.new)
    assert_selector "div.irelia-avatar"
  end
end
