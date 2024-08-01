module Irelia
  class FormBuilder < ActionView::Helpers::FormBuilder
    # [:text_field, :text_area].each do |method_name|
    #   define_method(method_name) do |method, options = {}|
    #     render_component(method_name, method, options)
    #   end
    # end

    def text_field(method, html_options = {}, &block)
      render_component(:text_field, method, options: options, html_options: html_options, &block)
    end

    def password_field(method, html_options = {}, &block)
      render_component(:password_field, method, options: options, html_options: html_options, &block)
    end

    def select(method, choices = nil, options = {}, html_options = {}, &block)
      render_component(:select, method, choices: choices, options: options, html_options: html_options, &block)
    end

    def submit(value = nil, options = {})
      component = Irelia::Button::Component.new(type: :submit, html_options: options)
      component.with_content(value) if value
      component.render_in(@template)
    end

    private

    def render_component(component_name, method, **args, &block)
      args[:options] = args[:options].merge({
        label: args[:html_options].delete(:label),
        hint: args[:html_options].delete(:hint)
      })

      component = component_klass(component_name).new(method: method, object: @object, object_name: @object_name, **args)
      component.render_in(@template, &block)
    end

    def component_klass(component_name)
      class_name = component_name.to_s.camelize
      "Irelia::Form::#{class_name}::Component".safe_constantize
    end
  end
end
