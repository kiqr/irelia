module Irelia
  module Options
    module Flex
      module Direction
        def self.included(base)
          base.class_eval do
            option :direction, default: -> { :row }, in: [ :row, :column ]

            after_initialize do
              add_css_classes(
                class_names(
                  "irelia-flex--row": direction == :row,
                  "irelia-flex--column": direction == :column,
                )
              )
            end
          end
        end
      end
    end
  end
end
