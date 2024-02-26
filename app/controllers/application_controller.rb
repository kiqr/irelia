# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :authenticate_account!, unless: :devise_controller?
  before_action :setup_breadcrumb_for_team

  private
    def setup_breadcrumb_for_team
      return unless user_signed_in?
      breadcrumb(current_account.name, "#") if current_account && current_account != current_user.personal_account
    end

    # Redirect to the sign in page after signing out.
    def after_sign_out_path_for(resource_or_scope)
      new_user_session_path
    end
end
