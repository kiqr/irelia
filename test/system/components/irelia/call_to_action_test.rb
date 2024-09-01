# frozen_string_literal: true

require "application_system_test_case"

class Irelia::CallToAction::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/call_to_action/default")
    assert_selector "div.irelia-call-to-action.irelia-call-to-action--default"
  end
end
