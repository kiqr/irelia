# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Table::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/table/default")
    assert_selector "table.irelia-table.irelia-table--default"
  end
end
