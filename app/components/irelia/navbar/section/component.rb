# frozen_string_literal: true

class Irelia::Navbar::Section::Component < Irelia::Component
  option :grow, default: -> { false }, in: [ true, false ]

  style {
    base {
      %w[irelia-navbar__section]
    }

    variants {
      variant {
        default { %w[irelia-navbar__section--default] }
      }

      grow {
        yes { %w[irelia-navbar__section--grow] }
      }
    }
  }

  def classes
    style(variant: :default, grow:)
  end
end
