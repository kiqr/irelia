# frozen_string_literal: true

class Irelia::SplitScreen::Component < Irelia::Component
  renders_one :left
  renders_one :right

  option :variant, default: -> { :default }, values: %i[default reverse]
  option :center, default: -> { false }, values: %i[true false]

  def variants
    class_names(
      "irelia-split-screen",
      "irelia-split-screen--default": variant == :default,
      "irelia-split-screen--reverse": variant == :reverse,
      "irelia-split-screen--center": center == true,
    )
  end
end
