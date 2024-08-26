# frozen_string_literal: true

class Irelia::Dropdown::Component < Irelia::Component
  option :open, default: -> { false }
  option :direction, default: -> { :down }, in: %i[down up]

  renders_one :trigger, "DropdownTrigger"
  renders_one :custom_trigger, "CustomDropdownTrigger"
  renders_many :items, "DropdownItem"

  def variants
    class_names(
      "irelia-dropdown",
      "irelia-dropdown--default": variant == :default,
      "irelia-dropdown--direction-down": direction == :down,
      "irelia-dropdown--direction-up": direction == :up
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

  class CustomDropdownTrigger < Irelia::Component
    def initialize(**options)
      options[:html_options] ||= {}
      options[:html_options]["data"] = { "action": "irelia-dropdown#toggle click@window->irelia-dropdown#hide" }
      options[:html_options]["style"] = "display:block;width:100%"
      super(**options)
    end

    def call
      content_tag(:button, content, html_options)
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
