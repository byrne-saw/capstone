class RenameNotificationUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :notifications, :patient_id, :user_id
  end
end
