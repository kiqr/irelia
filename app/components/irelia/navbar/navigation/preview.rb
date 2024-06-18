# frozen_string_literal: true

class Irelia::Navbar::Navigation::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::Navbar::Navigation::Component.new) do |nav|
      nav.with_link(url: "#", active: true) { "Home" }
      nav.with_link(url: "#") { "Features" }
      nav.with_link(url: "#") { "Pricing" }
      nav.with_link(url: "#") { "Documentation" }
    end
  end
end
