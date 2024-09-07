# frozen_string_literal: true

require "application_system_test_case"

class Irelia::ScrollArea::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/scroll_area/default")
    assert_selector "article.irelia-scroll-area.irelia-scroll-area--default"
  end
end
