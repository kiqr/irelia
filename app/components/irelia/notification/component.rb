# frozen_string_literal: true

class Irelia::Notification::Component < Irelia::Component
  option :variant, default: proc { :notice }, in: %i[notice success warning error]
  option :title, default: -> { nil }, required: false

  def heading
    translations = {
      notice: "Info",
      success: "Success",
      warning: "Warning",
      alert: "Error"
    }

    title || translations[variant]
  end

  def icon_class
    icons = {
      notice: "fa fa-info-circle",
      success: "fa fa-check-circle",
      warning: "fa fa-exclamation-triangle",
      alert: "fa fa-exclamation-circle"
    }

    icons[variant]
  end

  def variants
    class_names(
      "irelia-notification",
      "irelia-notification--notice": variant == :notice,
      "irelia-notification--success": variant == :success,
      "irelia-notification--warning": variant == :warning,
      "irelia-notification--alert": variant == :alert
    )
  end
end
