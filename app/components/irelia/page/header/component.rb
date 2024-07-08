# frozen_string_literal: true

class Irelia::Page::Header::Component < Irelia::Component
  option :title
  option :subline, optional: true

  def variants
    class_names(
      "irelia-page__header",
      "irelia-page__header--default": variant == :default
    )
  end
end
