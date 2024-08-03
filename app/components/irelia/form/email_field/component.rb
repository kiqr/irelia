# frozen_string_literal: true

class Irelia::Form::EmailField::Component < Irelia::Form::TextField::Component
  def variants
    class_names(
      "irelia-form__email-field",
      "irelia-form__email-field--default": variant == :default
    )
  end
end
