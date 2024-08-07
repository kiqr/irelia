# frozen_string_literal: true

class Irelia::Button::Preview < Irelia::ComponentPreview
  # @label Default
  # @param color select { choices: [primary, secondary, danger] } "Button theme color"
  # @param size select { choices: [xs, sm, md, lg, xl] } "Size of the button"
  def default(color: :primary, size: :md)
    irelia_button(color:, size:) { "Default button" }
  end

  # @!group Colors

  # @label Primary button (default)
  def primary_color
    irelia_button { "Button" }
  end

  # @label Secondary button
  def secondary_color
    irelia_button(color: :secondary) { "Button" }
  end

  # @label Danger button
  def danger_color
    irelia_button(color: :danger) { "Button" }
  end

  # @!endgroup

  # @!group Sizes

  # @label Extra small
  def sizes_xs
    irelia_button(size: :xs) { "Button" }
  end

  # @label Small
  def sm_size
    irelia_button(size: :sm) { "Button" }
  end

  # @label Medium (default)
  def default_size
    irelia_button(size: :md) { "Button" }
  end

  # @label Large
  def lg_size
    irelia_button(size: :lg) { "Large button" }
  end

  # @label Extra large
  def xl_size
    irelia_button(size: :xl) { "Extra large button" }
  end

  # @!endgroup

  # @label Icon + text
  def with_icon
    irelia_button(icon: "fas fa-home", size: :md) { "Button with icon" }
  end

  # @label Text + icon
  def with_right_icon
    irelia_button(right_icon: "fas fa-arrow-right", size: :md) { "Button with icon" }
  end

  # @label Only icon
  def only_icon
    irelia_button(icon: "fas fa-save", size: :md)
  end

  # @label Link
  # Pass a URL to the button to render an anchor tag instead of a button.
  def link(color: :default, size: :md)
    irelia_button(url: "#") { "Link button" }
  end
end
