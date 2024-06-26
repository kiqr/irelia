# frozen_string_literal: true

class Irelia::Dropdown::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_dropdown(open: true) do |dropdown|
      dropdown.with_trigger(size: :sm, icon: "fas fa-gear")
      dropdown.with_item { "Profile" }
      dropdown.with_item { "Settings" }
      dropdown.with_item { "Switch account" }
      dropdown.with_item { "Sign out" }
    end
  end

  # @label Icons on left
  def icons_left
    irelia_dropdown(open: true) do |dropdown|
      dropdown.with_trigger(size: :sm, icon: "fas fa-gear")
      dropdown.with_item(icon: "fas fa-user") { "Profile" }
      dropdown.with_item(icon: "fas fa-gear") { "Settings" }
      dropdown.with_item(icon: "fas fa-users") { "Switch account" }
      dropdown.with_item(icon: "fas fa-right-from-bracket") { "Sign out" }
    end
  end

  # @label Icons on right
  def icons_right
    irelia_dropdown(open: true) do |dropdown|
      dropdown.with_trigger(size: :sm, icon: "fas fa-gear")
      dropdown.with_item(right_icon: "fas fa-user") { "Profile" }
      dropdown.with_item(right_icon: "fas fa-gear") { "Settings" }
      dropdown.with_item(right_icon: "fas fa-users") { "Switch account" }
      dropdown.with_item(right_icon: "fas fa-right-from-bracket") { "Sign out" }
    end
  end

  # @label Direction up
  def direction_up
  end
end
