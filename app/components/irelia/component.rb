module Irelia
  class Component < ViewComponentContrib::Base
    extend Dry::Initializer

    option :html_options, default: proc { {} }
    option :variant, default: proc { :default }

    def initialize(**options)
      super

      @component_classes = +""
      add_css_classes(variants)
    end

    def html_options
      # Merge the component classes with the classes from the html_options.
      @html_options.merge({ class: "#{@component_classes} #{@html_options[:class]}".strip })
    end

    def add_css_classes(css_class)
      @component_classes += " #{css_class}"
    end

    def variants
    end
  end
end
