# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Form::TextArea::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/form/text_area/default")
    assert_selector "textarea.irelia-form__text-area.irelia-form__text-area--default"
  end
end
