require_dependency "login_device/application_controller"

module LoginDevice
  class LoginRecordsController < ApplicationController
    def index
      if user_signed_in?
        @login_records = LoginDevice::LoginRecord.where(user_id: current_user.id, is_active: true)
      end
    end
  end
end
