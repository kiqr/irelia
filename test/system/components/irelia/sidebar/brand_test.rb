# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Sidebar::Brand::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/sidebar/brand/default")
    assert_selector "section.irelia-sidebar__brand.irelia-sidebar__brand--default"
  end
end
