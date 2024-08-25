module Irelia
  module Options
    module Padding
      def self.included(base)
        base.class_eval do
          option :padding, default: -> { :none }, in: [ :none, :sm, :md, :lg ]
          option :padding_top, default: -> { :none }, in: [ :none, :sm, :md, :lg ]
          option :padding_right, default: -> { :none }, in: [ :none, :sm, :md, :lg ]
          option :padding_bottom, default: -> { :none }, in: [ :none, :sm, :md, :lg ]
          option :padding_left, default: -> { :none }, in: [ :none, :sm, :md, :lg ]

          after_initialize do
            add_css_classes(
              class_names(
                "irelia-padding-none": padding == :none,
                "irelia-padding-sm": padding == :sm,
                "irelia-padding-md": padding == :md,
                "irelia-padding-lg": padding == :lg,

                "irelia-padding-top-none": padding_top == :none,
                "irelia-padding-top-sm": padding_top == :sm,
                "irelia-padding-top-md": padding_top == :md,
                "irelia-padding-top-lg": padding_top == :lg,

                "irelia-padding-right-none": padding_right == :none,
                "irelia-padding-right-sm": padding_right == :sm,
                "irelia-padding-right-md": padding_right == :md,
                "irelia-padding-right-lg": padding_right == :lg,

                "irelia-padding-left-none": padding_left == :none,
                "irelia-padding-left-sm": padding_left == :sm,
                "irelia-padding-left-md": padding_left == :md,
                "irelia-padding-left-lg": padding_left == :lg,

                "irelia-padding-bottom-none": padding_bottom == :none,
                "irelia-padding-bottom-sm": padding_bottom == :sm,
                "irelia-padding-bottom-md": padding_bottom == :md,
                "irelia-padding-bottom-lg": padding_bottom == :lg,
              )
            )
          end
        end
      end
    end
  end
end
