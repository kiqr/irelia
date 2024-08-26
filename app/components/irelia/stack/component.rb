# frozen_string_literal: true

class Irelia::Stack::Component < Irelia::Component
  include Irelia::Options::Flex::Items
  include Irelia::Options::Flex::Justify

  option :direction, default: -> { :horizontal }, in: %i[horizontal horizontal_reverse vertical vertical_reverse]
  option :grow, default: -> { false }, in: [ true, false ]

  def variants
    class_names(
      "irelia-stack",
      "irelia-stack--default": variant == :default,
      "irelia-stack--horizontal": direction == :horizontal,
      "irelia-stack--horizontal-reverse": direction == :horizontal_reverse,
      "irelia-stack--vertical": direction == :vertical,
      "irelia-stack--vertical-reverse": direction == :vertical_reverse,
      "irelia-stack--grow": grow
    )
  end
end
