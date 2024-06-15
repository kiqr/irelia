# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Button::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/button/default")
    assert_selector "button.irelia-button"
  end

  def test_link_preview
    visit("/rails/view_components/irelia/button/link")
    assert_selector "a.irelia-button"
  end
end
