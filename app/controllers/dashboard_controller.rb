# frozen_string_literal: true

class DashboardController < ApplicationController
  def show
    breadcrumb "Dashboard", root_path
  end
end
