require_relative "lib/irelia/version"

Gem::Specification.new do |spec|
  spec.name        = "irelia"
  spec.version     = Irelia::VERSION
  spec.authors     = [ "Rasmus Kjellberg" ]
  spec.email       = [ "2277443+kjellberg@users.noreply.github.com" ]
  spec.homepage    = "https://kiqr.dev"
  spec.summary     = "Default theme for KIQR"
  spec.description = "View components, assets and styles built with Tailwind CSS for KIQR."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kiqr/irelia"
  spec.metadata["changelog_uri"] = "https://github.com/kiqr/irelia"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "view_component", "~> 3.12"
  spec.add_dependency "view_component-contrib", "~> 0.2.2"
  spec.add_dependency "dry-initializer", "~> 3.1"
  spec.add_dependency "lookbook", "~> 2.3.1"
end
