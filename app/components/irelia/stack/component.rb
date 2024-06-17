# frozen_string_literal: true

class Irelia::Stack::Component < Irelia::Component
  include Irelia::Options::Flex::Justify

  option :direction, default: -> { :horizontal }, in: %i[horizontal horizontal_reverse vertical vertical_reverse]
  option :align, default: -> { :baseline }, in: %i[flex_start center flex_end baseline stretch]
  option :grow, default: -> { false }, in: [ true, false ]

  def variants
    class_names(
      "irelia-stack",
      "irelia-stack--default": variant == :default,
      "irelia-stack--horizontal": direction == :horizontal,
      "irelia-stack--horizontal-reverse": direction == :horizontal_reverse,
      "irelia-stack--vertical": direction == :vertical,
      "irelia-stack--vertical-reverse": direction == :vertical_reverse,
      "irelia-stack--align-start": align == :flex_start,
      "irelia-stack--align-center": align == :center,
      "irelia-stack--align-end": align == :flex_end,
      "irelia-stack--align-baseline": align == :baseline,
      "irelia-stack--align-stretch": align == :stretch,
      "irelia-stack--grow": grow
    )
  end
end
