# frozen_string_literal: true

require "test_helper"

class Irelia::Page::Header::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Page::Header::Component.new(title: "Dashboard"))
    assert_selector "header.irelia-page__header"
  end
end
