# frozen_string_literal: true

class Irelia::Table::Row::Component < Irelia::Component
  renders_many :cells, "CellComponent"

  def initialize(**options)
    super(**options)
  end

  def variants
    class_names(
      "irelia-table__row",
      "irelia-table__row--default": variant == :default
    )
  end

  class CellComponent < Irelia::Component
    def initialize(**options)
      super(**options)
    end

    def variants
      class_names(
        "irelia-table__cell",
      )
    end

    def call
      content_tag :td, html_options do
        content
      end
    end
  end
end
