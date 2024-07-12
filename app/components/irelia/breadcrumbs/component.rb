# frozen_string_literal: true

class Irelia::Breadcrumbs::Component < Irelia::Component
  option :breadcrumbs, default: -> { [] }

  def variants
    class_names(
      "irelia-breadcrumbs",
      "irelia-breadcrumbs--default": variant == :default
    )
  end
end
