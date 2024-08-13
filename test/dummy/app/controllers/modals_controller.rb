class ModalsController < ApplicationController
  def preview
    render turbo_stream: turbo_stream.update("popup_modal", partial: "modals/preview")
  end

  def preview2
    render turbo_stream: turbo_stream.update("popup_modal", partial: "modals/preview2")
  end
end
