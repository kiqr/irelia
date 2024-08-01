# frozen_string_literal: true

class Irelia::Form::Base::Component < Irelia::Component
  option :object, required: true
  option :object_name, required: true
  option :method, required: true
  option :options, default: -> { {} }, required: false

  def label_text
    options[:label] || object&.class&.human_attribute_name(method)
  end

  def hint_text
    options[:hint]
  end

  def input_options
    html_options.merge(
      value: value,
    )
  end

  def value
    object&.send(method)
  end

  def group_component
    Irelia::Form::Group::Component.new(
      object: object,
      object_name: object_name,
      method: method,
      html_options: html_options,
      options: options
    )
  end

  def errors
    object ? object.errors[method] : []
  end

  def error_messages
    errors&.join(", ")
  end

  def has_errors?
    errors&.any?
  end

  def has_hint?
    hint_text.present?
  end
end
