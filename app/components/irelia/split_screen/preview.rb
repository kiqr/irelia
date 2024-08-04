# frozen_string_literal: true

class Irelia::SplitScreen::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    component = Irelia::SplitScreen::Component.new
    component.with_content("Main content!")
    render component
  end
end
