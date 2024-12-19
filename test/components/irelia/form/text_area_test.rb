# frozen_string_literal: true

require "form_component_test_case"

class Irelia::Form::TextArea::ComponentTest < FormComponentTestCase
  def test_renders
    render_inline(Irelia::Form::TextArea::Component.new(
      method: :bio,
      object: @object,
      object_name: @object_name,
      options: { label: "Bio" },
      html_options: {}
    ))

    assert_selector "#user_bio_group textarea[name='user[bio]']"
    assert_selector "#user_bio_group label", text: "Bio"
  end
end
