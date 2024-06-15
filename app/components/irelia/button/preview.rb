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
    irelia_button { "Primary button" }
  end

  # @label Secondary button
  def secondary_color
    irelia_button(color: :secondary) { "Secondary button" }
  end

  # @label Danger button
  def danger_color
    irelia_button(color: :danger) { "Danger button" }
  end

  # @!endgroup

  # @!group Sizes

  # @label Extra small
  def sizes_xs
    # irelia_button(size: :xs) { "Example button" }
    render_with_template(
      template: "irelia/button/previews/all_colors",
      locals: { size: :xs },
    )
  end

  # @label Small
  def sm_size
    render_with_template(
      template: "irelia/button/previews/all_colors",
      locals: { size: :sm },
    )
  end

  # @label Medium (default)
  def default_size
    render_with_template(
      template: "irelia/button/previews/all_colors",
      locals: { size: :md },
    )
  end

  # @label Large
  def lg_size
    render_with_template(
      template: "irelia/button/previews/all_colors",
      locals: { size: :lg },
    )
  end

  # @label Extra large
  def xl_size
    render_with_template(
      template: "irelia/button/previews/all_colors",
      locals: { size: :xl },
    )
  end

  # @!endgroup

  # @label Link
  # Pass a URL to the button to render an anchor tag instead of a button.
  def as_link(color: :default, size: :md)
    irelia_button(url: "#") { "Link button" }
  end
end
