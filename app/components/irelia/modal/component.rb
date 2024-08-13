# frozen_string_literal: true

class Irelia::Modal::Component < Irelia::Component
  option :name
  option :title, optional: true

  renders_one :button, "ToggleButton"

  def variants
    class_names(
      "irelia-modal",
      "irelia-modal--default": variant == :default,
      "irelia-modal--with-title": title.present?
    )
  end

  def before_render
    raise "Missing button component" if content && button.nil?
  end

  class ToggleButton < Irelia::Button::Component
    def initialize(**options)
      options[:html_options] ||= {}
      options[:html_options]["data"] = { "action": "irelia-modal#open" }

      super(**options)
    end
  end
end
