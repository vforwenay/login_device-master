require 'test_helper'

module LoginDevice
  class LoginRecordsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @login_record = login_device_login_records(:one)
    end

    test "should get index" do
      get login_records_url
      assert_response :success
    end
  end
end
