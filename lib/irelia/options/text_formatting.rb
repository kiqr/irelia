module Irelia
  module Options
    module TextFormatting
      def self.included(base)
        base.class_eval do
          option :text, default: -> { :base }, in: [ :xs, :sm, :base, :lg, :xl, :xxl, :xxxl ]
          option :bold, default: -> { false }, in: [ true, false, :bold, :semibold, :extrabold ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-text-base": text == :none,
                "irelia-text-xs": text == :xs,
                "irelia-text-sm": text == :sm,
                "irelia-text-lg": text == :lg,
                "irelia-text-xl": text == :xl,
                "irelia-text-2xl": text == :xxl,
                "irelia-text-3xl": text == :xxxl,
                "irelia-text-no-bold": bold == false,
                "irelia-text-bold": bold == true || bold == :bold,
                "irelia-text-semibold": bold == :semibold,
                "irelia-text-extrabold": bold == :extrabold
              )
            )
          end
        end
      end
    end
  end
end
