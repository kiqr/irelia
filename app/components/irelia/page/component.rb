# frozen_string_literal: true

class Irelia::Page::Component < Irelia::Component
  renders_one :breadcrumbs, Irelia::Breadcrumbs::Component
  renders_one :header, Irelia::Page::Header::Component

  def variants
    class_names(
      "irelia-page",
      "irelia-page--default": variant == :default
    )
  end
end
