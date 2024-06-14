# frozen_string_literal: true

require "test_helper"

class Irelia::Button::ComponentTest < ViewComponent::TestCase
  def test_renders_button
    render_inline(Irelia::Button::Component.new) { "This is a button" }
    assert_selector "button.irelia-button.irelia-button--primary"
    assert_text "This is a button"
  end

  def test_renders_link
    render_inline(Irelia::Button::Component.new(url: "/")) { "This is a link" }
    assert_selector "a.irelia-button.irelia-button--primary"
    assert_text "This is a link"
  end

  def test_renders_variants
    component = Irelia::Button::Component.new(color: :danger, size: :xs)

    render_inline(component) { "Delete something?" }
    assert_selector "button.irelia-button.irelia-button--danger"
    assert_selector "button.irelia-button.irelia-button--xs"
  end
end
