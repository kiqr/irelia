# frozen_string_literal: true

class Irelia::Flex::Component < Irelia::Component
  include Irelia::Options::Padding
  include Irelia::Options::TextFormatting
  include Irelia::Options::Width
  include Irelia::Options::Fixed

  include Irelia::Options::Flex::Justify
  include Irelia::Options::Flex::Direction
  include Irelia::Options::Flex::Gap
  include Irelia::Options::Flex::Grow
  include Irelia::Options::Flex::Items

  def variants
    class_names(
      "irelia-flex",
      "irelia-flex--default": variant == :default,
    )
  end
end
