# frozen_string_literal: true

class Irelia::Navigation::Component < Irelia::Component
  renders_many :links, "NavigationLink"

  def variants
    class_names(
      "irelia-navigation",
      "irelia-navigation--default": variant == :default
    )
  end

  class NavigationLink < Irelia::Button::Component
    option :active, default: -> { false }

    def initialize(**options)
      options[:size] = :sm
      options[:color] = options[:active] ? :primary : :secondary

      super(**options)
    end
  end
end
