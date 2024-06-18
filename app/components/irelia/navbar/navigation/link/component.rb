# frozen_string_literal: true

class Irelia::Navbar::Navigation::Link::Component < Irelia::Component
  option :url
  option :active, default: -> { false }

  def variants
    class_names(
      "irelia-navbar__navigation__link",
      "irelia-navbar__navigation__link--default": variant == :default,
      "irelia-navbar__navigation__link--active": active
    )
  end

  # def call
  #   raise "#{self.class.name}: content block is required" if content.nil?
  # end
end
