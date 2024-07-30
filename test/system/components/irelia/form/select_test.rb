# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Form::Select::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/form/select/default")
    assert_selector "div.irelia-form__select.irelia-form__select--default"
  end
end
