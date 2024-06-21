# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Dropdown::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/dropdown/default")
    assert_selector "span.irelia-dropdown.irelia-dropdown--default"
  end
end
