# frozen_string_literal: true

class Irelia::Div::Component < Irelia::Component
  include Irelia::Options::Padding

  def variants
    class_names(
      "irelia-div",
      "irelia-div--default": variant == :default
    )
  end
end
