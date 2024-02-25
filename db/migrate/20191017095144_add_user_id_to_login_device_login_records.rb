class AddUserIdToLoginDeviceLoginRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :login_device_login_records, :user_id, :integer
    add_column :login_device_login_records, :is_active, :boolean, default: false
  end
end
