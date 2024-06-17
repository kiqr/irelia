# frozen_string_literal: true

class Irelia::Navbar::Component < Irelia::Component
  option :full_width, default: -> { false }

  renders_many :components, types: {
    brand: { renders: Irelia::Navbar::Brand::Component, as: :brand },
    navigation: { renders: Irelia::Navbar::Navigation::Component, as: :navigation },
    separator: { renders: Irelia::Navbar::Separator::Component, as: :separator },
    section: { renders: Irelia::Navbar::Section::Component, as: :section }
  }

  def variants
    class_names(
      "irelia-navbar",
      "irelia-navbar--default": variant == :default,
      "irelia-navbar--full-width": full_width
    )
  end
end
