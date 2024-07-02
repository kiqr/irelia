# frozen_string_literal: true

require "test_helper"

class Irelia::AccountSwitcher::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::AccountSwitcher::Component.new)
    assert_selector "div.irelia-account-switcher"
  end
end
