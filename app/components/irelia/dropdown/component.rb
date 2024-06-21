# frozen_string_literal: true

class Irelia::Dropdown::Component < Irelia::Component
  option :open, default: -> { false }

  renders_one :trigger, types: {
    button: { renders: Irelia::Button::Component, as: :trigger }
  }

  renders_many :items, "DropdownItem"

  def variants
    class_names(
      "irelia-dropdown",
      "irelia-dropdown--default": variant == :default,
      "irelia-dropdown--open": open
    )
  end

  class DropdownItem < Irelia::Button::Component
    def initialize(**options)
      super(size: :sm, variant: :dropdown_item, **options)
    end
  end
end
