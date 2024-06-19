module Irelia
  module ComponentsHelper
    include ActionView::Helpers::UrlHelper

    IRELIA_COMPONENTS_HELPERS = {
      button: "Irelia::Button::Component",
      icon: "Irelia::Icon::Component",
      stack: "Irelia::Stack::Component",
      navbar: "Irelia::Navbar::Component",
      navbar_section: "Irelia::Navbar::Section::Component",
      navbar_separator: "Irelia::Navbar::Separator::Component"
    }.freeze

    IRELIA_COMPONENTS_HELPERS.each do |name, component|
      define_method :"irelia_#{name}" do |*args, **kwargs, &block|
        render component.constantize.new(*args, **kwargs), &block
      end
    end
  end
end
