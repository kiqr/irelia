# frozen_string_literal: true

require "application_system_test_case"

class Irelia::EmptyCollection::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/empty_collection/default")
    assert_selector "div.irelia-empty-collection.irelia-empty-collection--default"
  end
end
