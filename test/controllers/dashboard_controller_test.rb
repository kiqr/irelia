# frozen_string_literal: true

require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to authentication page" do
    get root_path
    assert_redirected_to new_user_session_path
  end
end
