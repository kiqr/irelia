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

    @html_options["x-data"] = "{ dropdownOpen: #{open} }"
  end

  class DropdownTrigger < Irelia::Button::Component
    def initialize(**options)
      options[:html_options] ||= {}
      options[:html_options]["@click"] = "dropdownOpen = true"
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
