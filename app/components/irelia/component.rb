module Irelia
  class Component < ViewComponentContrib::Base
    extend Dry::Initializer

    option :html_options, default: proc { {} }
    option :variant, default: proc { :default }

    def initialize(**options)
      super

      @component_classes = +""
      add_css_classes(variants)
      self.class.run_after_initialize_hooks(self)
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

    class << self
      def after_initialize(method_name = nil, &block)
        @after_initialize_hooks ||= []
        if method_name
          @after_initialize_hooks << method_name
        elsif block_given?
          @after_initialize_hooks << block
        end
      end

      def run_after_initialize_hooks(instance)
        return unless @after_initialize_hooks
        @after_initialize_hooks.each do |hook|
          if hook.is_a?(Symbol)
            instance.send(hook)
          elsif hook.is_a?(Proc)
            instance.instance_eval(&hook)
          end
        end
      end

      def inherited(subclass)
        super
        subclass.instance_variable_set(:@after_initialize_hooks, @after_initialize_hooks.dup)
      end
    end
  end
end
