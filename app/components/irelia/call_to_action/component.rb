# frozen_string_literal: true

class Irelia::CallToAction::Component < Irelia::Component
  option :title, default: -> { nil }
  option :description, default: -> { nil }

  renders_many :buttons, Irelia::Button::Component

  def variants
    class_names(
      "irelia-call-to-action",
      "irelia-call-to-action--default": variant == :default
    )
  end
end
