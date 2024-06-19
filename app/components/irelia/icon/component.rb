# frozen_string_literal: true

class Irelia::Icon::Component < Irelia::Component
  option :icon_class, optional: true

  def variants
    class_names(
      "irelia-icon",
      "irelia-icon--default": variant == :default
    )
  end

  def call
    content_tag(:span, html_options) do
      content_tag(:i, nil, class: (icon_class || content))
    end
  end
end
