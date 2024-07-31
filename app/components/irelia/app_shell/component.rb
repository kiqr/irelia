# frozen_string_literal: true

class Irelia::AppShell::Component < Irelia::Component
  renders_one :sidebar, Irelia::Sidebar::Component
  renders_one :breadcrumbs, Irelia::Breadcrumbs::Component
  renders_one :sub_menu, Irelia::Navigation::Component

  def variants
    class_names(
      "irelia-app-shell",
      "irelia-app-shell--default": variant == :default
    )
  end
end
