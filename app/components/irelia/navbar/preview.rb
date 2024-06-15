# frozen_string_literal: true

class Irelia::Navbar::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_navbar do |navbar|
    end
  end
end
