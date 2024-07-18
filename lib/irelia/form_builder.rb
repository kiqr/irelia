module Irelia
  class FormBuilder < ActionView::Helpers::FormBuilder
    # [:text_field, :text_area].each do |method_name|
    #   define_method(method_name) do |method, options = {}|
    #     render_component(method_name, method, options)
    #   end
    # end

    def text_field(method, options = {}, &block)
      render_component(:text_field, method, options, &block)
    end

    def submit(value = nil, options = {})
      component = Irelia::Button::Component.new(type: :submit, html_options: options)
      component.with_content(value) if value
      component.render_in(@template)
    end

    private

    def render_component(component_name, method, options, &block)
      component = component_klass(component_name).new(method: method, html_options: options, object: @object, object_name: @object_name)
      component.render_in(@template, &block)
    end

    def component_klass(component_name)
      "Irelia::Form::TextField::Component".safe_constantize
    end
  end
end
