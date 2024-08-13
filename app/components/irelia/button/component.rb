# frozen_string_literal: true

class Irelia::Button::Component < Irelia::Component
  option :url, default: -> { nil }
  option :type, default: -> { :button }, in: [ :button, :submit, :reset ]
  option :size, default: -> { :md }, in: [ :xs, :sm, :md, :lg, :xl ]
  option :color, default: proc { :primary }, in: %i[primary secondary danger]
  option :skip_tag, default: false, optional: true
  option :modal, optional: true

  option :icon, optional: true
  option :right_icon, optional: true

  def variants
    class_names(
      "irelia-button",
      "irelia-button--default": variant == :default,
      "irelia-button--dropdown-item": variant == :dropdown_item,
      "irelia-button--color-primary": color == :primary,
      "irelia-button--color-secondary": color == :secondary,
      "irelia-button--color-danger": color == :danger,
      "irelia-button--xs": size == :xs,
      "irelia-button--sm": size == :sm,
      "irelia-button--md": size == :md,
      "irelia-button--lg": size == :lg,
      "irelia-button--xl": size == :xl
    )
  end

  def initialize(**options)
    super

    @tag = @url.present? ? :a : :button
    @html_options[:href] = @url if @url.present?
    @html_options[:type] = @type
    @html_options["data-turbo-frame"] = @modal if @modal.present?
  end
end
