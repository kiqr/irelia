# frozen_string_literal: true

require "test_helper"

class Irelia::AccountSwitcher::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::AccountSwitcher::Component.new(
      name: "John Doe",
      account_name: "Team X",
      avatar: "https://example.com/avatar.jpg",
    ))
    assert_selector "div.irelia-account-switcher"
  end
end
