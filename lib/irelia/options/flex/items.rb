module Irelia
  module Options
    module Flex
      module Items
        def self.included(base)
          base.class_eval do
            option :items, default: -> { nil }, in: %i[start center end baseline stretch]

            after_initialize do
              add_css_classes(
                class_names(
                  "irelia-items-start": items == :start,
                  "irelia-items-center": items == :center,
                  "irelia-items-end": items == :end,
                  "irelia-items-baseline": items == :baseline,
                  "irelia-items-stretch": items == :stretch,
                )
              )
            end
          end
        end
      end
    end
  end
end
