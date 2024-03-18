require "application_system_test_case"

class SigninTest < ApplicationSystemTestCase
  setup do
    @jane = users(:jane)
    @jane.update(password: "th1s1sp@ssw0rd")

    @john = users(:john)
    @john.update(password: "th1s1sp@ssw0rd")
  end

  test "signs in with an onboarded account" do
    visit new_user_session_path
    fill_in "user[email]", with: @jane.email
    fill_in "user[password]", with: @jane.password
    click_on "commit"

    assert_current_path dashboard_path
  end

  test "signs in with a fresh account" do
    visit new_user_session_path
    fill_in "user[email]", with: @john.email
    fill_in "user[password]", with: @john.password
    click_on "commit"

    assert_current_path setup_personal_account_path
  end

  test "sign in page shows invalid details error" do
    visit new_user_session_path
    fill_in "user[email]", with: @jane.email
    fill_in "user[password]", with: "somethingwrong"
    click_on "commit"

    # Check for .alert class in the page
    assert_current_path new_user_session_path
    assert_selector ".fa-circle-exclamation"
  end
end
