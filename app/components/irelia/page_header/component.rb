# frozen_string_literal: true

class Irelia::PageHeader::Component < Irelia::Component
  option :title
  option :subline, optional: true

  renders_many :buttons, Irelia::Button::Component

  def variants
    class_names(
      "irelia-page-header",
      "irelia-page-header--default": variant == :default
    )
  end
end
