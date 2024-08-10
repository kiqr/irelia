# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Card::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/card/default")
    assert_selector "div.irelia-card.irelia-card--default"
  end
end
