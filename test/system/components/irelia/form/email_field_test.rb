# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Form::EmailField::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/form/email_field/default")
    assert_selector "input.irelia-form__email-field.irelia-form__email-field--default[type='email']"
  end
end
