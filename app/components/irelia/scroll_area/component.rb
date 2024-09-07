# frozen_string_literal: true

class Irelia::ScrollArea::Component < Irelia::Component
  include Irelia::Options::Padding

  option :size, default: -> { :md }, in: %w[sm md lg]

  def variants
    class_names(
      "irelia-scroll-area",
      "irelia-scroll-area--default": variant == :default,
      "irelia-scroll-area--size-sm": size == :sm,
      "irelia-scroll-area--size-md": size == :md,
      "irelia-scroll-area--size-lg": size == :lg
    )
  end
end
