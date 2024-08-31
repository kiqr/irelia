# frozen_string_literal: true

class Irelia::EmptyCollection::Component < Irelia::Component
  option :title, default: -> { nil }
  option :description, default: -> { nil }

  renders_many :buttons, Irelia::Button::Component

  def variants
    class_names(
      "irelia-empty-collection",
      "irelia-empty-collection--default": variant == :default
    )
  end
end
