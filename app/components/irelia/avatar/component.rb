# frozen_string_literal: true

class Irelia::Avatar::Component < Irelia::Component
  option :src, default: -> { nil }

  def image_url
    content || src
  end

  def variants
    class_names(
      "irelia-avatar",
      "irelia-avatar--default": variant == :default
    )
  end
end
