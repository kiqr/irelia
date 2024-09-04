module Irelia
  module Options
    module TextFormatting
      def self.included(base)
        base.class_eval do
          option :text, default: -> { :none }, in: [ :xs, :sm, :base, :lg, :xl, :xxl, :xxxl, :center ]
          option :bold, default: -> { false }, in: [ true, false, :bold, :semibold, :extrabold ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-text-xs": option_includes?(:text, :xs),
                "irelia-text-sm": option_includes?(:text, :sm),
                "irelia-text-lg": option_includes?(:text, :lg),
                "irelia-text-xl": option_includes?(:text, :xl),
                "irelia-text-2xl": option_includes?(:text, :xxl),
                "irelia-text-3xl": option_includes?(:text, :xxxl),
                "irelia-text-center": option_includes?(:text, :center),
                "irelia-text-left": option_includes?(:text, :left),
                "irelia-text-right": option_includes?(:text, :right),
                "irelia-text-no-bold": bold == false,
                "irelia-text-bold": option_includes?(:bold, :bold),
                "irelia-text-semibold": option_includes?(:bold, :semibold),
                "irelia-text-extrabold": option_includes?(:bold, :extrabold)
              )
            )
          end
        end
      end
    end
  end
end
