# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Form::PasswordField::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/form/password_field/default")
    assert_selector "input.irelia-form__password-field.irelia-form__password-field--default[type='password']"
  end
end
