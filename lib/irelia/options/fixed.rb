module Irelia
  module Options
    module Fixed
      def self.included(base)
        base.class_eval do
          option :fixed, default: -> { false }, in: [ :top, :top_right, :right, :bottom_right, :bottom, :bottom_left, :left, :top_left ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-fixed": !!fixed,
                "irelia-fixed-top": option_includes?(:fixed, :top),
                "irelia-fixed-top-right": option_includes?(:fixed, :top_right),
                "irelia-fixed-right": option_includes?(:fixed, :right),
                "irelia-fixed-bottom-right": option_includes?(:fixed, :bottom_right),
                "irelia-fixed-bottom": option_includes?(:fixed, :bottom),
                "irelia-fixed-bottom-left": option_includes?(:fixed, :bottom_left),
                "irelia-fixed-left": option_includes?(:fixed, :left),
                "irelia-fixed-top-left": option_includes?(:fixed, :top_left)
              )
            )
          end
        end
      end
    end
  end
end
