# frozen_string_literal: true

class Irelia::Table::Component < Irelia::Component
  renders_many :columns, "ColumnComponent"
  renders_many :rows, Irelia::Table::Row::Component

  def variants
    class_names(
      "irelia-table",
      "irelia-table--default": variant == :default
    )
  end

  class ColumnComponent < Irelia::Component
    def initialize(**options)
      super(**options)
    end

    def variants
      class_names(
        "irelia-table irelia-table__head-column",
      )
    end

    def call
      content_tag :th, html_options do
        content
      end
    end
  end
end
