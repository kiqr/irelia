# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navbar::Brand::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navbar/brand/default")
    assert_selector "a.irelia-navbar__brand.irelia-navbar__brand--default[href='#']"
  end
end
