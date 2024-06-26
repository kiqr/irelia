# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Sidebar::Navigation::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/sidebar/navigation/default")
    assert_selector "section.irelia-sidebar__navigation.irelia-sidebar__navigation--default"
  end
end
