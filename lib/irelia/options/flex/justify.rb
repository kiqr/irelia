module Irelia
  module Options
    module Flex
      module Justify
        def self.included(base)
          base.class_eval do
            option :justify, default: -> { :start }, in: %i[start center between around evenly stretch end]

            after_initialize do
              add_css_classes(
                class_names(
                  "irelia-justify-start": justify == :start,
                  "irelia-justify-center": justify == :center,
                  "irelia-justify-between": justify == :between,
                  "irelia-justify-end": justify == :end,
                  "irelia-justify-around": justify == :around,
                  "irelia-justify-evenly": justify == :evenly,
                  "irelia-justify-stretch": justify == :stretch
                )
              )
            end
          end
        end
      end
    end
  end
end
