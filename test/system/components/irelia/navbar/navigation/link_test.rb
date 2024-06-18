# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navbar::Navigation::Link::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navbar/navigation/link/default")
    assert_selector "a.irelia-navbar__navigation__link.irelia-navbar__navigation__link--default[href='#']"
  end
end
