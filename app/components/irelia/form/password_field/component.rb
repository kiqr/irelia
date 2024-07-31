# frozen_string_literal: true

class Irelia::Form::PasswordField::Component < Irelia::Form::TextField::Component
  def variants
    class_names(
      "irelia-form__password-field",
      "irelia-form__password-field--default": variant == :default
    )
  end
end
