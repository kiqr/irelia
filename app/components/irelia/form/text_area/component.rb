# frozen_string_literal: true

class Irelia::Form::TextArea::Component < Irelia::Form::Base::Component
  def variants
    class_names(
      "irelia-form__text-area",
      "irelia-form__text-area--default": variant == :default
    )
  end
end
