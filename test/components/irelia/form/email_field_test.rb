# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::EmailField::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::EmailField::Component.new(
      method: :email,
      object: @object,
      object_name: @object_name
    ))

    assert_selector "#user_email_group input[type='email'][name='user[email]']"
    assert_selector "#user_email_group label", text: "Email"
  end
end
