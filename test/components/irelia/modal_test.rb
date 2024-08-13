# frozen_string_literal: true

require "test_helper"

class Irelia::Modal::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Modal::Component.new(name: "popup", title: "Modal Title"))
    assert_selector "div.irelia-modal turbo-frame#popup"
    assert_text "Modal Title"
  end

  def test_requires_button_if_content
    component = Irelia::Modal::Component.new(name: "popup", title: "Modal Title")
    component.with_content "Foo bar zoo"

    assert_raises "Missing button component" do
      render_inline(component)
    end
  end

  def test_renders_button_with_content
    component = Irelia::Modal::Component.new(name: "popup", title: "Modal Title")
    component.with_content "Foo bar zoo"
    component.with_button { "Open modal" }

    render_inline(component)
    assert_selector "button", text: "Open modal"
    assert_text "Foo bar zoo"
  end
end
