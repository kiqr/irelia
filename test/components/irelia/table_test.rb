# frozen_string_literal: true

require "test_helper"

class Irelia::Table::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Table::Component.new)
    assert_selector "table.irelia-table"
  end
end
