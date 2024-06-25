# frozen_string_literal: true

class Irelia::Sidebar::Section::Component < Irelia::Component
  include Irelia::Options::Flex::Grow
  include Irelia::Options::Flex::Justify

  def variants
    class_names(
      "irelia-sidebar__section",
      "irelia-sidebar__section--default": variant == :default
    )
  end
end
