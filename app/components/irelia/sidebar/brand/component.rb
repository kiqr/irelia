# frozen_string_literal: true

class Irelia::Sidebar::Brand::Component < Irelia::Component
  option :url, default: -> { nil }, optional: true

  def variants
    class_names(
      "irelia-sidebar__brand",
      "irelia-sidebar__brand--default": variant == :default
    )
  end

  def initialize(**options)
    super

    @tag = @url.present? ? :a : :div
    @html_options[:href] = @url if @url.present?
  end
end
