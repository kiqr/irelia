# frozen_string_literal: true

require "test_helper"

class Irelia::Notification::ComponentTest < ViewComponent::TestCase
  def test_renders
    component = Irelia::Notification::Component.new(text: "This is a notification")
    render_inline(component)
    assert_selector "div.irelia-notification"
    assert_text "This is a notification"
  end
end
