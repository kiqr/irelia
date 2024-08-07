# frozen_string_literal: true

class Irelia::Form::Group::Component < Irelia::Form::Base::Component
  def initialize(**options)
    super

    add_css_classes "irelia-form__group--invalid" if errors.present?
  end

  def group_options
    html_options.merge(
      id: group_id
    )
  end

  def group_id
    "#{object_name}_#{method}_group"
  end

  def variants
    class_names(
      "irelia-form__group",
      "irelia-form__group--default": variant == :default
    )
  end
end
