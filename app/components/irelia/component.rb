module Irelia
  class Component < ViewComponentContrib::Base
    include ViewComponentContrib::StyleVariants
    extend Dry::Initializer
  end
end
