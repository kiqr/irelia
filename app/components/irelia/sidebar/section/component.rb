# frozen_string_literal: true

class Irelia::Sidebar::Section::Component < Irelia::Component
  include Irelia::Options::Flex::Grow
  include Irelia::Options::Flex::Justify

  option :padding, default: -> { true }

  def variants
    class_names(
      "irelia-sidebar__section",
      "irelia-sidebar__section--default": variant == :default,
      "irelia-sidebar__section--padding": padding
    )
  end
end
