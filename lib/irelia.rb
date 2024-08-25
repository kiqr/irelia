require "irelia/version"
require "irelia/engine"

require "view_component"
require "view_component-contrib"
require "dry-initializer"
require "lookbook"

require "irelia/config"
require "irelia/form_builder"
require "irelia/options/padding"
require "irelia/options/flex/direction"
require "irelia/options/flex/gap"
require "irelia/options/flex/grow"
require "irelia/options/flex/justify"

module Irelia
  def self.config
    @config ||= Irelia::Config
  end
end
