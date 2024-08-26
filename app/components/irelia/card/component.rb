# frozen_string_literal: true

class Irelia::Card::Component < Irelia::Component
  include Irelia::Options::Width

  option :padding, default: -> { true }, optional: true

  def variants
    class_names(
      "irelia-card",
      "irelia-card--default": variant == :default,
      "irelia-card--no-padding": padding == false
    )
  end
end
