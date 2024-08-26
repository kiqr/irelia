module Irelia
  module Options
    module Fixed
      def self.included(base)
        base.class_eval do
          option :fixed, default: -> { false }, in: [ :top, :top_right, :right, :bottom_right, :bottom, :bottom_left, :left, :top_left ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-fixed-top": fixed == :top,
                "irelia-fixed-top-right": fixed == :top_right,
                "irelia-fixed-right": fixed == :right,
                "irelia-fixed-bottom-right": fixed == :bottom_right,
                "irelia-fixed-bottom": fixed == :bottom,
                "irelia-fixed-bottom-left": fixed == :bottom_left,
                "irelia-fixed-left": fixed == :left,
                "irelia-fixed-top-left": fixed == :top_left
              )
            )
          end
        end
      end
    end
  end
end
