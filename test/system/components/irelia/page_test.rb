# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Page::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/page/default")
    assert_selector "main.irelia-page.irelia-page--default"
  end
end
