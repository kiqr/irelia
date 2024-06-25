# frozen_string_literal: true

require "application_system_test_case"

class Irelia::AppShell::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/app_shell/default")
    assert_selector "div.irelia-app-shell.irelia-app-shell--default"
  end
end
