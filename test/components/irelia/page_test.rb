# frozen_string_literal: true

require "test_helper"

class Irelia::Page::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Page::Component.new)
    assert_selector "main.irelia-page"
  end
end
