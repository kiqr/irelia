# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::TextField::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::TextField::Component.new(
      method: :name,
      object: @object,
      object_name: @object_name,
      options: { label: "Full name" },
      html_options: {}
    ))

    assert_selector "div.irelia-form__text-field input[type='text'][name='user[name]']"
    assert_selector "div.irelia-form__text-field label", text: "Full name"
  end
end
