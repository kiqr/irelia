module Irelia
  module Options
    module Flex
      module Gap
        def self.included(base)
          base.class_eval do
            option :gap, default: -> { :md }, in: [ :none, :xs, :sm, :md, :lg ]

            after_initialize do
              add_css_classes(
                class_names(
                  "irelia-flex--gap-none": gap == :none,
                  "irelia-flex--gap-xs": gap == :xs,
                  "irelia-flex--gap-sm": gap == :sm,
                  "irelia-flex--gap-md": gap == :md,
                  "irelia-flex--gap-lg": gap == :lg,
                )
              )
            end
          end
        end
      end
    end
  end
end
