# frozen_string_literal: true

class Irelia::Stack::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @label Default
  # @param direction select { choices: [horizontal, horizontal_reverse, vertical, vertical_reverse] } "Direction of the stack"
  # @param justify select { choices: [start, center, between, end, around, evenly, stretch] } "Position along main axis"
  # @param items select { choices: [flex_start, center, flex_end, baseline, stretch] } "Position along cross axis"
  # @param grow toggle "Grow items to fill space"

  def default(direction: :horizontal, justify: :flex_start, items: :baseline, grow: false)
    render_with_template(locals: {
      direction: direction,
      justify: justify,
      items: items,
      grow: grow
    })
  end

  # @label Horizontal
  # @param justify select { choices: [start, center, between, end, around, evenly, stretch] } "Position along main axis"
  # @param items select { choices: [flex_start, center, flex_end, baseline, stretch] } "Position along cross axis"
  # @param grow toggle "Grow items to fill space"

  def horizontal(justify: :flex_start, items: :baseline, grow: false)
    render_with_template(locals: {
      justify: justify,
      items: items,
      grow: grow
    })
  end

  # @label Vertical
  # @param justify select { choices: [start, center, between, end, around, evenly, stretch] } "Position along main axis"
  # @param items select { choices: [flex_start, center, flex_end, baseline, stretch] } "Position along cross axis"
  # @param grow toggle "Grow items to fill space"

  def vertical(justify: :flex_start, items: :baseline, grow: false)
    render_with_template(locals: {
      justify: justify,
      items: items,
      grow: grow
    })
  end
end
