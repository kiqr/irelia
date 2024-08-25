module Irelia
  module ComponentsHelper
    include ActionView::Helpers::UrlHelper

    IRELIA_COMPONENTS_HELPERS = {
      account_switcher: "Irelia::AccountSwitcher::Component",
      app_shell: "Irelia::AppShell::Component",
      button: "Irelia::Button::Component",
      breadcrumbs: "Irelia::Breadcrumbs::Component",
      card: "Irelia::Card::Component",
      container: "Irelia::Container::Component",
      div: "Irelia::Div::Component",
      divider: "Irelia::Divider::Component",
      dropdown: "Irelia::Dropdown::Component",
      flex: "Irelia::Flex::Component",
      icon: "Irelia::Icon::Component",
      modal: "Irelia::Modal::Component",
      notification: "Irelia::Notification::Component",
      page_header: "Irelia::PageHeader::Component",
      sidebar: "Irelia::Sidebar::Component",
      stack: "Irelia::Stack::Component",
      table: "Irelia::Table::Component",
      navbar: "Irelia::Navbar::Component",
      navbar_section: "Irelia::Navbar::Section::Component",
      navbar_separator: "Irelia::Navbar::Separator::Component",
      navigation: "Irelia::Navigation::Component",
      split_screen: "Irelia::SplitScreen::Component"
    }.freeze

    IRELIA_COMPONENTS_HELPERS.each do |name, component|
      define_method :"irelia_#{name}" do |*args, **kwargs, &block|
        render component.constantize.new(*args, **kwargs), &block
      end
    end

    def irelia_button_to(name = nil, options = nil, args = nil, &block)
      args, options = options, name if args.nil?
      options ||= {}
      args ||= {}
      args[:html_options] ||= {}
      args[:html_options][:class] ||= args[:class]

      component = Irelia::Button::Component.new(skip_tag: true, **args)
      component_attributes = component.class.dry_initializer.definitions.keys

      if block
        component.with_content(capture(&block))
      elsif name != options
        component.with_content(name)
      end

      html_options = args.merge(component.html_options)

      button_to(options, html_options.except(*component_attributes)) do
        render(component)
      end
    end
  end
end
