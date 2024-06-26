# frozen_string_literal: true

class Irelia::Sidebar::Component < Irelia::Component
  renders_many :components, types: {
    brand: { renders: Irelia::Sidebar::Brand::Component, as: :brand },
    navigation: { renders: Irelia::Sidebar::Navigation::Component, as: :navigation },
    section: { renders: Irelia::Sidebar::Section::Component, as: :section }
  }

  def variants
    class_names(
      "irelia-sidebar",
      "irelia-sidebar--default": variant == :default
    )
  end
end
