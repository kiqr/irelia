# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navbar::Section::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navbar/section/default")
    assert_selector "div.irelia-navbar__section.irelia-navbar__section--default"
  end
end
