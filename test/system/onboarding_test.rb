require "application_system_test_case"

class OnboardingTest < ApplicationSystemTestCase
  test "can create user and personal account" do
    visit new_user_registration_path

    # Fill the user registration form
    fill_in "user[email]", with: "firstname.lastname@example.com"
    fill_in "user[password]", with: "th1s1sp@ssw0rd"
    fill_in "user[password_confirmation]", with: "th1s1sp@ssw0rd"
    click_on "commit"

    # Should be on the setup_personal_account_path
    assert_current_path setup_personal_account_path

    # Fill the personal account setup form
    fill_in "account[name]", with: "John Doe"
    # fill_in "account[my_custom_field]", with: "My custom value"
    click_on "commit"

    # Should be redirected to dashboard after successfully signing up.
    assert_current_path dashboard_path
  end
end
