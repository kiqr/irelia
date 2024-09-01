# frozen_string_literal: true

require "test_helper"

class Irelia::CallToAction::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::CallToAction::Component.new)
    assert_selector "div.irelia-call-to-action"
  end
end
