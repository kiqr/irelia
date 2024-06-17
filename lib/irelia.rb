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
end
