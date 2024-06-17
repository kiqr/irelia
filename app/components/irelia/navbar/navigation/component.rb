# frozen_string_literal: true

class Irelia::Navbar::Navigation::Component < Irelia::Navbar::Section::Component
  # Override to make the default value true
  option :grow, default: -> { true }, in: [ true, false ]

  def variants
    class_names(
      "irelia-navbar__navigation",
      "irelia-navbar__navigation--default": variant == :default
    )
  end
end
