# frozen_string_literal: true

require "application_system_test_case"

class Irelia::AccountSwitcher::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/account_switcher/default")
    assert_selector "div.irelia-account-switcher.irelia-account-switcher--default"
  end
end
