# frozen_string_literal: true

class Irelia::Sidebar::Navigation::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::Sidebar::Navigation::Component.new) do |navbar|
      navbar.with_link(url: "#", icon: "fa fa-home", active: true) { "Home" }
      navbar.with_link(url: "#", icon: "fa fa-globe") { "Websites" }
      navbar.with_link(url: "#", icon: "fab fa-github") { "Repositories" }
      navbar.with_link(url: "#", icon: "fa fa-book") { "Guide & documenation" }
      navbar.with_link(url: "#", icon: "fa fa-gear") { "Settings" }
    end
  end
end
