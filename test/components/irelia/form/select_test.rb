# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::Select::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::Select::Component.new(**component_options))

    assert_selector "#user_language_group select[name='user[language]']"
    assert_selector "#user_language_group label", text: "Language"
    assert_selector "#user_language_group select option", text: "Select your language"
  end

  def test_renders_with_selected_value
    @object.language = "Swedish"
    render_inline(Irelia::Form::Select::Component.new(**component_options))
    assert_selector "#user_language_group select option[selected]", text: "Swedish"
  end

  private

  def component_options
    {
      method: :language,
      object: @object,
      object_name: @object_name,
      choices: [ "English", "Swedish" ],
      options: {
        prompt: "Select your language"
      },
      html_options: {
        label: "Language"
      }
    }
  end
end
