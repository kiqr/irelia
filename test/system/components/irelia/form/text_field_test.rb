# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Form::TextField::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/form/text_field/default")
    assert_selector "input.irelia-form__text-field.irelia-form__text-field--default[type='text']"
  end
end
