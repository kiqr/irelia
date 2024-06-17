# frozen_string_literal: true

class Irelia::Navbar::Section::Component < Irelia::Component
  include Irelia::Options::Flex::Grow
  include Irelia::Options::Flex::Justify

  def variants
    class_names(
      "irelia-navbar__section",
      "irelia-navbar__section--default": variant == :default
    )
  end
end
