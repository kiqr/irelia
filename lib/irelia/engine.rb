module Irelia
  class Engine < ::Rails::Engine
    config.autoload_paths << Irelia::Engine.root.join("app", "components")

    initializer "irelia.configure.view_components" do |app|
      config.view_component.preview_paths << Irelia::Engine.root.join("app", "components")
    end

    initializer "irelia.configure.lookbook" do |app|
      app.config.lookbook.project_name = "Irelia components"
      app.config.lookbook.preview_collection_label = "Components"
    end

    # Add the app/javascript directory to the asset pipeline
    initializer "irelia.assets.precompile" do |app|
      app.config.assets.paths << Irelia::Engine.root.join("app", "assets", "dist")
      app.config.assets.precompile += %w[irelia.css irelia.js]
    end
  end
end
