# frozen_string_literal: true

class Irelia::Form::Select::Component < Irelia::Form::Base::Component
  option :choices, required: false, default: -> { nil }

  def options
    @options.merge({
      selected: value
    })
  end

  def variants
    class_names(
      "irelia-form__select",
      "irelia-form__select--default": variant == :default
    )
  end
end
