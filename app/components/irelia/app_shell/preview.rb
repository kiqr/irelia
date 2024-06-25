# frozen_string_literal: true

class Irelia::AppShell::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render(Irelia::AppShell::Component.new(variant: :default)) do |component|
      component.with_sidebar
    end
  end
end
