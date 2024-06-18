# frozen_string_literal: true

class Irelia::Navbar::Navigation::Link::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::Navbar::Navigation::Link::Component.new(url: "#")) { "Navbar link" }
  end
end
