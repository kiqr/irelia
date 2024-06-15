# frozen_string_literal: true

class Irelia::Button::Component < Irelia::Component
  option :url, default: -> { nil }
  option :type, default: -> { :button }, in: [ :button, :submit, :reset ]
  option :size, default: -> { :md }, in: [ :xs, :sm, :md, :lg, :xl ]
  option :color, default: proc { :primary }, in: %i[primary secondary danger]
  option :skip_tag, default: false, optional: true

  style {
    base {
      %w[irelia-button]
    }

    variants {
      color {
        primary { %w[irelia-button--primary] }
        secondary { %w[irelia-button--secondary] }
        danger { %w[irelia-button--danger] }
      }

      size {
        xs { %w[irelia-button--xs] }
        sm { %w[irelia-button--sm] }
        md { %w[irelia-button--md] }
        lg { %w[irelia-button--lg] }
        xl { %w[irelia-button--xl] }
      }
    }
  }

  def classes
    style(color:, size:)
  end

  def initialize(**options)
    super

    @tag = @url.present? ? :a : :button
    @html_options[:href] = @url if @url.present?
  end
end
