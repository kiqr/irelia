# frozen_string_literal: true

class Irelia::Card::Component < Irelia::Component
  include Irelia::Options::Width
  include Irelia::Options::Padding


  def variants
    class_names(
      "irelia-card",
      "irelia-card--default": variant == :default,
    )
  end
end
