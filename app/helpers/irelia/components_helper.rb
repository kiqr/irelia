module Irelia
  module ComponentsHelper
    include ActionView::Helpers::UrlHelper

    IRELIA_COMPONENTS_HELPERS = {
      button: "Irelia::Button::Component",
      stack: "Irelia::Stack::Component",
      navbar: "Irelia::Navbar::Component",
    }.freeze

    IRELIA_COMPONENTS_HELPERS.each do |name, component|
      define_method :"irelia_#{name}" do |*args, **kwargs, &block|
        render component.constantize.new(*args, **kwargs), &block
      end
    end
  end
end
