# frozen_string_literal: true

class Irelia::PageHeader::Component < Irelia::Component
  option :title
  option :subline, optional: true
  option :variant, default: proc { :default }, in: %i[default split_screen]

  renders_many :buttons, Irelia::Button::Component

  def variants
    class_names(
      "irelia-page-header",
      "irelia-page-header--default": variant == :default,
      "irelia-page-header--split-screen": variant == :split_screen
    )
  end
end
