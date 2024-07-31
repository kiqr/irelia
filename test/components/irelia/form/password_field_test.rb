# frozen_string_literal: true

require "test_helper"

class Irelia::Form::PasswordField::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Form::PasswordField::Component.new)
    assert_selector "div.irelia-form__password-field"
  end
end
