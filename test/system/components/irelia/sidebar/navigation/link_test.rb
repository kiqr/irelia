# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Sidebar::Navigation::Link::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/sidebar/navigation/link/default")
    assert_selector "a.irelia-sidebar__navigation__link.irelia-sidebar__navigation__link--default"
  end
end
