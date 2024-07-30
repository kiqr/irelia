module Irelia
  module FormHelper
    def irelia_form(model: nil, scope: nil, url: nil, format: nil, **options, &block)
      options[:builder] ||= Irelia::FormBuilder
      options[:class] = "irelia-form"
      form_with(model: model, scope: scope, url: url, format: format, **options, &block)
    end
  end
end
