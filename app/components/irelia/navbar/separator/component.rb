# frozen_string_literal: true

class Irelia::Navbar::Separator::Component < Irelia::Component
  style {
    base {
      %w[irelia-navbar__separator]
    }

    variants {
      variant {
        default { %w[irelia-navbar__separator--default] }
      }
    }
  }

  def call
    content_tag(:div, content, html_options)
  end

  def classes
    style(variant: :default)
  end
end
