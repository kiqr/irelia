# frozen_string_literal: true

require "test_helper"

class Irelia::Icon::ComponentTest < ViewComponent::TestCase
  def test_with_argument
    render_inline(Irelia::Icon::Component.new(icon_class: "fas fa-home"))
    assert_selector "span.irelia-icon.irelia-icon--default i.fas.fa-home"
  end

  def test_with_block
    render_inline(Irelia::Icon::Component.new) { "fas fa-dashboard" }
    assert_selector "span.irelia-icon.irelia-icon--default i.fas.fa-dashboard"
  end
end
