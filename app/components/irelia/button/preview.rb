# frozen_string_literal: true

class Irelia::Button::Preview < Irelia::ComponentPreview
  # @label Button
  # @param color select { choices: [primary, danger] } "Button theme color"
  # @param size select { choices: [xs, sm, md, lg, xl] } "Size of the button"
  def default_button(color: :primary, size: :md)
    irelia_button(color:, size:) { "Default button" }
  end

  # @!group Colors

  # @label Primary
  def primary_color
    irelia_button { "Primary button" }
  end

  # @label Danger
  def danger_color
    irelia_button(color: :danger) { "Danger button" }
  end

  # @!endgroup

  # @!group Sizes

  # @label Extra small
  def xs_size
    irelia_button(size: :xs) { "Example button" }
  end

  # @label Small
  def sm_size
    irelia_button(size: :sm) { "Example button" }
  end

  # @label Medium (default)
  def default_size
    irelia_button { "Example button" }
  end

  # @label Large
  def lg
    irelia_button(size: :lg) { "Example button" }
  end

  # @label Extra large
  def lg
    irelia_button(size: :xl) { "Example button" }
  end

  # @!endgroup

  # @label Link
  # Pass a URL to the button to render an anchor tag instead of a button.
  def as_link(color: :default, size: :md)
    irelia_button(url: "#") { "Link button" }
  end
end
