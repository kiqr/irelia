# frozen_string_literal: true

class Irelia::Navbar::Component < Irelia::Component
  style {
    base {
      %w[irelia-navbar]
    }
  }

  def classes
    style
  end
end
