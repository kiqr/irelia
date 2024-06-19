# frozen_string_literal: true

require "application_system_test_case"

class Irelia::Icon::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_components/irelia/icon/default")

    # Can't check for i-tag here cause font awesome may have been loaded
    # and converted the tag to a svg tag.
    assert_selector "span.irelia-icon.irelia-icon--default .fa-user"
  end
end
