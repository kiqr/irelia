# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Page::Header::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/page/header/default")
    assert_selector "header.irelia-page__header.irelia-page__header--default"
  end
end
