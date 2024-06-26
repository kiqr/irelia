# frozen_string_literal: true

class Irelia::Sidebar::Navigation::Link::Component < Irelia::Component
  option :url
  option :active, default: -> { false }
  option :icon, optional: true

  def variants
    class_names(
      "irelia-sidebar__navigation__link",
      "irelia-sidebar__navigation__link--default": variant == :default,
      "irelia-sidebar__navigation__link--active": active
    )
  end
end
