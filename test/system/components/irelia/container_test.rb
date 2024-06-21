# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Container::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/container/default")
    assert_selector "div.irelia-container.irelia-container--default"
  end
end
