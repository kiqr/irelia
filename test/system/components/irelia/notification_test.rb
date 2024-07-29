# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Notification::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/notification/default")
    assert_selector "div.irelia-notification.irelia-notification--notice"
  end
end
