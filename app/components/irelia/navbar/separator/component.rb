# frozen_string_literal: true

class Irelia::Navbar::Separator::Component < Irelia::Component
  def variants
    class_names(
      "irelia-navbar__separator",
      "irelia-navbar__separator--default": variant == :default
    )
  end

  def call
    content_tag(:div, content, html_options)
  end
end
