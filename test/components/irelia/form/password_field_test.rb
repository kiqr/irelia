# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::PasswordField::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::PasswordField::Component.new(
      method: :password,
      object: @object,
      object_name: @object_name,
      html_options: {
        label: "Password"
      }
    ))

    assert_selector "div.irelia-form__password-field input[type='password'][name='user[password]']"
    assert_selector "div.irelia-form__password-field label", text: "Password"
  end
end
