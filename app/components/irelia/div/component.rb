# frozen_string_literal: true

class Irelia::Div::Component < Irelia::Component
  include Irelia::Options::Padding
  include Irelia::Options::TextFormatting
  include Irelia::Options::Width
  include Irelia::Options::Fixed

  def variants
    class_names(
      "irelia-div",
      "irelia-div--default": variant == :default
    )
  end
end
