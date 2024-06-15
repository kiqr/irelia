# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Stack::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/stack/default")
    assert_selector "div.irelia-stack"
  end
end
