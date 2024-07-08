# frozen_string_literal: true

require "test_helper"

class Irelia::Breadcrumbs::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Breadcrumbs::Component.new)
    assert_selector "div.irelia-breadcrumbs"
  end
end
