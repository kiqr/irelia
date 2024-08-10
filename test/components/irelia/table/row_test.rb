# frozen_string_literal: true

require "test_helper"

class Irelia::Table::Row::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Irelia::Table::Row::Component.new)
    assert_selector "tr.irelia-table__row"
  end
end
