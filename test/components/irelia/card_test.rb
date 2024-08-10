# frozen_string_literal: true

require "test_helper"

class Irelia::Card::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Card::Component.new)
    assert_selector "div.irelia-card"
  end
end
