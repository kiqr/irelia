# frozen_string_literal: true

class Irelia::Navigation::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_navigation do |nav|
      nav.with_link(active: true) { "Profile" }
      nav.with_link { "Messages" }
      nav.with_link { "Gallery" }
    end
  end
end
