# frozen_string_literal: true

class Irelia::Navbar::Component < Irelia::Component
  renders_many :components, types: {
    separator: { renders: Irelia::Navbar::Separator::Component, as: :separator },
    section: { renders: Irelia::Navbar::Section::Component, as: :section }
  }

  def variants
    class_names(
      "irelia-navbar",
      "irelia-navbar--default": variant == :default
    )
  end
end
