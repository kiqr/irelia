module Irelia
  class Config
    include ActiveSupport::Configurable

    # ==> Icok Packs
    # Icon pack's to use for the application. This will be autoloaded
    # in the application layout when using the `irelia_head` helper.
    config_accessor :icon_packs, default: [ "font_awesome" ]

    # => Load Poppins Google font.
    # This will be autoloaded in the application layout when using the `irelia_head` helper.
    config_accessor :load_poppins, default: true

    # => Load Alpine.js
    # This will be autoloaded in the application layout when using the `irelia_head` helper.
    config_accessor :load_alpinejs, default: true

    # => Enable Multi Appearance (Dark & Light Mode)
    # This will be autoloaded in the application layout when using the `irelia_head` helper.
    config_accessor :multi_appearance, default: true
  end
end
