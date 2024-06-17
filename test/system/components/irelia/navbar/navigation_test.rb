# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navbar::Navigation::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navbar/navigation/default")
    assert_selector "div.irelia-navbar__navigation.irelia-navbar__navigation--default"
  end
end
