# frozen_string_literal: true

class Irelia::Dropdown::Component < Irelia::Component
  option :open, default: -> { false }

  renders_one :trigger, "DropdownTrigger"
  renders_many :items, "DropdownItem"

  def variants
    class_names(
      "irelia-dropdown",
      "irelia-dropdown--default": variant == :default
    )
  end

  def initialize(**options)
    super
  end

  class DropdownTrigger < Irelia::Button::Component
    def initialize(**options)
      options[:html_options] ||= {}
      options[:html_options]["data"] = { "action": "irelia-dropdown#toggle click@window->irelia-dropdown#hide" }
      super(**options)
    end
  end

  class DropdownItem < Irelia::Button::Component
    def initialize(**options)
      options[:size] = :sm
      options[:variant] = :dropdown_item
      super(**options)
    end
  end
end
