# frozen_string_literal: true

class Irelia::Navbar::Component < Irelia::Component
  renders_many :components, types: {
    separator: { renders: Irelia::Navbar::Separator::Component, as: :separator },
    section: { renders: Irelia::Navbar::Section::Component, as: :section }
  }

  style {
    base {
      %w[irelia-navbar]
    }

    variants {
      variant {
        default { %w[irelia-navbar--default] }
      }
    }
  }

  def classes
    style(variant: :default)
  end
end
