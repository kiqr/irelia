# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Modal::ComponentSystemTest < ApplicationSystemTestCase
  def test_static_modal
    visit("/rails/view_components/irelia/modal/static_content")
    assert_selector "button", text: "Open modal"

    assert_no_selector "div.irelia-modal.irelia-modal--default"
    click_on "Open modal"

    assert_selector "div.irelia-modal.irelia-modal--default"
    assert_text "Static modal title"
    assert_text "This is modal with static content."

    find(".irelia-modal__close-button").click
    assert_no_text "This is modal with static content."
  end

  def test_remote_modal
    visit("/rails/view_components/irelia/modal/remote_content")
    click_on "Open Modal 1"
    assert_text "Hello from modal"

    find(".irelia-modal__close-button").click
    assert_no_text "Hello from modal"

    click_on "Open Modal 2"
    assert_text "Hello from another modal!"
  end
end
