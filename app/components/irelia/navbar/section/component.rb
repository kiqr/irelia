# frozen_string_literal: true

class Irelia::Navbar::Section::Component < Irelia::Component
  include Irelia::Variants::Justify

  option :grow, default: -> { false }, in: [ true, false ]

  def variants
    class_names(
      "irelia-navbar__section",
      "irelia-navbar__section--default": variant == :default,
      "irelia-navbar__section--grow": grow
    )
  end
end
