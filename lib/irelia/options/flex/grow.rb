module Irelia
  module Options
    module Flex
      module Grow
        def self.included(base)
          base.class_eval do
            option :grow, default: -> { false }, in: [ true, false ]

            after_initialize do
              add_css_classes(
                class_names(
                  "irelia-grow": grow
                )
              )
            end
          end
        end
      end
    end
  end
end
