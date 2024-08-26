# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Avatar::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/avatar/default")
    assert_selector "div.irelia-avatar.irelia-avatar--default"
  end
end
