# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Navigation::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/navigation/default")
    assert_selector "nav.irelia-navigation.irelia-navigation--default"
  end
end
