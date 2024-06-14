# frozen_string_literal: true

# Based on https://github.com/github/view_component/blob/master/lib/rails/generators/component/component_generator.rb
class ViewComponentGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  class_option :skip_test, type: :boolean, default: false
  class_option :skip_system_test, type: :boolean, default: false
  class_option :skip_preview, type: :boolean, default: false

  argument :attributes, type: :array, default: [], banner: "attribute"

  def create_component_file
    template "component.rb", File.join("app/components", class_path, file_name, "component.rb")
  end

  def create_template_file
    template "component.html.erb", File.join("app/components", class_path, file_name, "component.html.erb")
  end

  def create_test_file
    return if options[:skip_test]

    template "component_test.rb", File.join("test/components", class_path, "#{file_name}_test.rb")
  end

  def create_system_test_file
    return if options[:skip_system_test]

    template "component_system_test.rb", File.join("test/system/components", class_path, "#{file_name}_test.rb")
  end

  def create_preview_file
    return if options[:skip_preview]

    template "preview.rb", File.join("app/components", class_path, file_name, "preview.rb")
  end

  def create_pcss_file
    return if options[:skip_css]

    template "index.pcss.tt", File.join("app/components", class_path, file_name, "index.pcss")
  end

  def inject_import_to_pscss_index_file
    return if options[:skip_css]

    case self.behavior
    when :invoke
      inject_into_file "app/components/index.pcss" do
        "@import \"#{class_path.join('/')}/#{file_name}/index.pcss\";\n"
      end
    when :revoke
      remove_import_from_pscss_index_file
    end
  end

  private

  def css_class_name
    class_name.gsub("Irelia::", "irelia-")
         .gsub("::", "__")
         .gsub(/([a-z])([A-Z])/, '\1-\2')
         .downcase
  end

  def parent_class
    "Irelia::Component"
  end

  def remove_import_from_pscss_index_file
     return if options[:skip_css]

     import_statement = "@import \"#{class_path.join('/')}/#{file_name}/index.pcss\";\n"
     file_path = "app/components/index.pcss"

     if File.exist?(file_path)
       file_contents = File.read(file_path)
       new_contents = file_contents.gsub(import_statement, "")
       File.write(file_path, new_contents)
     end
  end

  def preview_parent_class
    "Irelia::ComponentPreview"
  end

  def initialize_signature
    return if attributes.blank?

    attributes.map { |attr| "option :#{attr.name}" }.join("\n  ")
  end
end
