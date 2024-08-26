# frozen_string_literal: true

class Irelia::Container::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_container size: :lg do
      "The container class sets the max-width of an element to match the min-width of the current breakpoint. This is useful if you’d prefer to design for a fixed set of screen sizes instead of trying to accommodate a fully fluid viewport."
    end
  end

  def centered
    irelia_container size: :lg, center: true do
      "The container class sets the max-width of an element to match the min-width of the current breakpoint. This is useful if you’d prefer to design for a fixed set of screen sizes instead of trying to accommodate a fully fluid viewport."
    end
  end
end
