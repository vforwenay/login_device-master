class CreateLoginDeviceLoginRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :login_device_login_records do |t|
      t.datetime :last_seen
      t.string :token
      t.string :device

      t.timestamps
    end
  end
end
