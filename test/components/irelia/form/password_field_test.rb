# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::PasswordField::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::PasswordField::Component.new(
      method: :password,
      object: @object,
      object_name: @object_name
    ))

    assert_selector "#user_password_group input[type='password'][name='user[password]']"
    assert_selector "#user_password_group label", text: "Password"
  end
end
