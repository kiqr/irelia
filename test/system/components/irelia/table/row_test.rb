# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Table::Row::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/table/row/default")
    assert_selector "tr.irelia-table__row.irelia-table__row--default"
  end
end
