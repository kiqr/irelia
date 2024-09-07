# frozen_string_literal: true

require "test_helper"

class Irelia::ScrollArea::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::ScrollArea::Component.new)
    assert_selector "article.irelia-scroll-area"
  end
end
