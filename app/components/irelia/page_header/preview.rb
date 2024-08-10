# frozen_string_literal: true

class Irelia::PageHeader::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_page_header(title: "Projects", subline: "List of all your projects.") do |header|
      header.with_button { "Create a project" }
      header.with_button(color: :secondary) { "Documentation" }
    end
  end
end
