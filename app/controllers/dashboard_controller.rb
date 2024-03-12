# frozen_string_literal: true

class DashboardController < ApplicationController
  def show
    breadcrumb "Dashboard", dashboard_path
  end
end
