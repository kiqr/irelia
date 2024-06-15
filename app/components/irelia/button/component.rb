# frozen_string_literal: true

class Irelia::Button::Component < Irelia::Component
  option :url, default: -> { nil }
  option :type, default: -> { :button }, in: [ :button, :submit, :reset ]
  option :size, default: -> { :md }, in: [ :xs, :sm, :md, :lg, :xl ]
  option :color, default: proc { :primary }, in: %i[primary secondary danger]
  option :html_options, default: proc { {} }
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

  def initialize(**options)
    super
    @tag = @url.present? ? :a : :button
  end

  def html_options
    @html_options.merge(
      class: style(color:, size:),
      href: @url.present? ? @url : nil,
    )
  end
end
