# frozen_string_literal: true

class Irelia::Divider::Component < Irelia::Component
  def variants
    class_names(
      "irelia-divider",
      "irelia-divider--default": variant == :default
    )
  end
end
