# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Html::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/html/default")
    assert_selector "div.irelia-html.irelia-html--default"
  end
end
