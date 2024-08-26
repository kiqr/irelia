# frozen_string_literal: true

require "test_helper"

class Irelia::Html::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Html::Component.new)
    assert_selector "div.irelia-html"
  end
end
