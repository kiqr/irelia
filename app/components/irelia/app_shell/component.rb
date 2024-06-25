# frozen_string_literal: true

class Irelia::AppShell::Component < Irelia::Component
  renders_one :sidebar, Irelia::Sidebar::Component

  def variants
    class_names(
      "irelia-app-shell",
      "irelia-app-shell--default": variant == :default
    )
  end
end
