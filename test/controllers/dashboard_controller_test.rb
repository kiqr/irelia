# frozen_string_literal: true

require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to authentication page if not signed in" do
    get dashboard_path
    assert_redirected_to new_user_session_path
  end

  test "should redirect to onboarding if user has no personal account" do
    sign_in users(:john)
    get dashboard_path
    assert_redirected_to setup_personal_account_path
  end

  test "should show dashboard if user has team" do
    sign_in users(:jane)
    get dashboard_path
    assert_response :success
  end
end
