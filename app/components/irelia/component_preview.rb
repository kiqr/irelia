module Irelia
  class ComponentPreview < ViewComponentContrib::Preview::Base
    include Irelia::ComponentsHelper

    self.abstract_class = true
  end
end
