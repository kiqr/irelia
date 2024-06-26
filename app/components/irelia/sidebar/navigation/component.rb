# frozen_string_literal: true

class Irelia::Sidebar::Navigation::Component < Irelia::Sidebar::Section::Component
  renders_many :links, Irelia::Sidebar::Navigation::Link::Component

  def variants
    class_names(
      "irelia-sidebar__navigation",
      "irelia-sidebar__navigation--default": variant == :default
    )
  end
end
