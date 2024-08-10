# frozen_string_literal: true

class Irelia::Card::Preview < Irelia::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    irelia_card do
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales fermentum tristique."
    end
  end

  def no_padding
    irelia_card(padding: false) do
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales fermentum tristique."
    end
  end
end
