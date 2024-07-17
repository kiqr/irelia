require "irelia/version"
require "irelia/engine"

require "view_component"
require "view_component-contrib"
require "dry-initializer"
require "lookbook"

module Irelia
  module Options
    module Flex
      autoload :Grow, "irelia/options/flex/grow"
      autoload :Justify, "irelia/options/flex/justify"
    end
  end

  autoload :FormBuilder, "irelia/form_builder"

  autoload :Config, "irelia/config"

  def self.config
    @config ||= Irelia::Config
  end
end
