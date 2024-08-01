# frozen_string_literal: true

class Irelia::Sidebar::Navigation::Link::Component < Irelia::Component
  option :url
  option :active, default: -> { false }
  option :icon, optional: true
  option :method, optional: true, default: -> { :get }

  def tag_helper(*args, &block)
    method == :get ? link_to(*args, &block) : button_to(*args, &block)
  end

  def variants
    class_names(
      "irelia-sidebar__navigation__link",
      "irelia-sidebar__navigation__link--default": variant == :default,
      "irelia-sidebar__navigation__link--active": active
    )
  end

  def initialize(**options)
    super

    @html_options[:method] = @method if @method != :get
  end
end
