# frozen_string_literal: true

class Irelia::Form::TextField::Component < Irelia::Form::Base::Component
  def variants
    class_names(
      "irelia-form__text-field",
      "irelia-form__text-field--default": variant == :default
    )
  end
end
