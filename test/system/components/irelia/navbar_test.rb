# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navbar::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navbar/default")

    assert_selector "section.irelia-navbar"
  end
end
