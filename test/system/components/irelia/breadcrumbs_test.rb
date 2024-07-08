# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Breadcrumbs::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/breadcrumbs/default")
    assert_selector "div.irelia-breadcrumbs.irelia-breadcrumbs--default"
  end
end
