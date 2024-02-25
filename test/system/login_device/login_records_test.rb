require "application_system_test_case"

module LoginDevice
  class LoginRecordsTest < ApplicationSystemTestCase
    setup do
      @login_record = login_device_login_records(:one)
    end

    test "visiting the index" do
      visit login_records_url
      assert_selector "h1", text: "Login Records"
    end

    test "creating a Login record" do
      visit login_records_url
      click_on "New Login Record"

      fill_in "Device", with: @login_record.device
      fill_in "Last seen", with: @login_record.last_seen
      fill_in "Token", with: @login_record.token
      click_on "Create Login record"

      assert_text "Login record was successfully created"
      click_on "Back"
    end

    test "updating a Login record" do
      visit login_records_url
      click_on "Edit", match: :first

      fill_in "Device", with: @login_record.device
      fill_in "Last seen", with: @login_record.last_seen
      fill_in "Token", with: @login_record.token
      click_on "Update Login record"

      assert_text "Login record was successfully updated"
      click_on "Back"
    end

    test "destroying a Login record" do
      visit login_records_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Login record was successfully destroyed"
    end
  end
end
