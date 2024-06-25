# frozen_string_literal: true

require "test_helper"

class Irelia::AppShell::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::AppShell::Component.new)
    assert_selector "div.irelia-app-shell"
  end
end
