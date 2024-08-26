module Irelia
  module Options
    module Width
      def self.included(base)
        base.class_eval do
          option :width, default: -> { nil }, in: [ :full ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-width-full": width == :full
              )
            )
          end
        end
      end
    end
  end
end
