# frozen_string_literal: true

class Irelia::Stack::Component < Irelia::Component
  option :direction, default: -> { :horizontal }, in: %i[horizontal horizontal_reverse vertical vertical_reverse]
  option :justify, default: -> { :flex_start }, in: %i[flex_start center between around evenly stretch flex_end]
  option :align, default: -> { :baseline }, in: %i[flex_start center flex_end baseline stretch]
  option :grow, default: -> { false }, in: [ true, false ]

  renders_many :items, Irelia::Stack::Item::Component

  style {
    base {
      %w[irelia-stack]
    }
    variants {
      direction {
        horizontal { %w[irelia-stack--horizontal] }
        horizontal_reverse { %w[irelia-stack--horizontal-reverse] }
        vertical { %w[irelia-stack--vertical] }
        vertical_reverse { %w[irelia-stack--vertical-reverse] }
      }
      justify {
        flex_start { %w[irelia-stack--justify-start] }
        center { %w[irelia-stack--justify-center] }
        between { %w[irelia-stack--justify-space-between] }
        flex_end { %w[irelia-stack--justify-end] }
        around { %w[irelia-stack--justify-around] }
        evenly { %w[irelia-stack--justify-evenly] }
        stretch { %w[irelia-stack--justify-stretch] }
      }
      align {
        flex_start { %w[irelia-stack--align-start] }
        center { %w[irelia-stack--align-center] }
        flex_end { %w[irelia-stack--align-end] }
        baseline { %w[irelia-stack--align-baseline] }
        stretch { %w[irelia-stack--align-stretch] }
      }
      grow {
        yes { %w[irelia-stack--grow] }
      }
    }
  }
end
