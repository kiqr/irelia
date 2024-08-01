# frozen_string_literal: true

class Irelia::Notification::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_notification { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
  end

  def success
    irelia_notification(variant: :success) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
  end

  def warning
    irelia_notification(variant: :warning) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
  end

  def alert
    irelia_notification(variant: :alert) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
  end
end
