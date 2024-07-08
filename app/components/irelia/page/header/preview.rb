# frozen_string_literal: true

class Irelia::Page::Header::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::Page::Header::Component.new(title: "Dashboard", subline: "This is the dashboard page."))
  end
end
