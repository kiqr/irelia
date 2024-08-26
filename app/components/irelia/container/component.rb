# frozen_string_literal: true

class Irelia::Container::Component < Irelia::Component
  option :center, default: -> { false }, in: %i[true false]
  option :size, default: -> { :full_width }, in: %i[full_width xxs xs sm md lg xl]

  def variants
    class_names(
      "irelia-container",
      "irelia-container--default": variant == :default,
      "irelia-container--size-full-width": size == :full_width,
      "irelia-container--size-xxl": size == :xxl,
      "irelia-container--size-xl": size == :xl,
      "irelia-container--size-lg": size == :lg,
      "irelia-container--size-md": size == :md,
      "irelia-container--size-sm": size == :sm,
      "irelia-container--size-xs": size == :xs,
      "irelia-container--size-xxs": size == :xxs,
      "irelia-container--center": center == true
    )
  end

  def call
    content_tag :div, html_options do
      content
    end
  end
end
