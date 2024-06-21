# frozen_string_literal: true

class Irelia::Container::Component < Irelia::Component
  def variants
    class_names(
      "irelia-container",
      "irelia-container--default": variant == :default
    )
  end

  def call
    content_tag :div, html_options do
      content
    end
  end
end
