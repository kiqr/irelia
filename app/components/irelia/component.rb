module Irelia
  class Component < ViewComponentContrib::Base
    include ViewComponentContrib::StyleVariants
    extend Dry::Initializer

    option :html_options, default: proc { {} }

    def initialize(**options)
      super

      @html_options[:class] = ("#{classes} " + (@html_options[:class] || "")).strip
    end

    def classes
      style
    end
  end
end
