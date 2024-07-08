# frozen_string_literal: true

class Irelia::Page::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_page do |page|
      page.with_breadcrumbs
      page.with_header(title: "Dashboard", subline: "Welcome to the dashboard")
    end
  end
end
