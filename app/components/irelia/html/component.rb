# frozen_string_literal: true

class Irelia::Html::Component < Irelia::Component
  def variants
    class_names(
      "irelia-html",
      "irelia-html--default": variant == :default
    )
  end
end
