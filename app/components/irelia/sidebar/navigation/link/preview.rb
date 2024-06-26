# frozen_string_literal: true

class Irelia::Sidebar::Navigation::Link::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::Sidebar::Navigation::Link::Component.new(icon: "fa fa-dashboard", url: "#")) { "Dashboard" }
  end
end
