module Irelia
  class Config
    include ActiveSupport::Configurable

    # ==> Icok Packs
    # Icon pack's to use for the application. This will be autoloaded
    # in the application layout when using the `irelia_head` helper.
    config_accessor :icon_packs, default: [ "font_awesome" ]
  end
end
