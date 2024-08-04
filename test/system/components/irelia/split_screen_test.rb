# frozen_string_literal: true

require "application_system_test_case"

class Irelia::SplitScreen::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/split_screen/default")
    assert_selector "div.irelia-split-screen.irelia-split-screen--default"
  end
end
