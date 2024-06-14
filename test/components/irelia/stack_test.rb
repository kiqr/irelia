# frozen_string_literal: true

require "test_helper"

class Irelia::Stack::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Stack::Component.new)
    assert_selector "div.irelia-stack"
  end
end
