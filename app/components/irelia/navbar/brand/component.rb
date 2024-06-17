# frozen_string_literal: true

class Irelia::Navbar::Brand::Component < Irelia::Component
  option :url, default: -> { nil }, optional: true

  def variants
    class_names(
      "irelia-navbar__brand",
      "irelia-navbar__brand--default": variant == :default
    )
  end

  def initialize(**options)
    super

    @tag = @url.present? ? :a : :span
    @html_options[:href] = @url if @url.present?
  end

  def call
    content_tag(@tag, html_options) do
      content
    end
  end
end
