# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Sidebar::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/sidebar/default")
    assert_selector "aside.irelia-sidebar.irelia-sidebar--default"
  end
end
