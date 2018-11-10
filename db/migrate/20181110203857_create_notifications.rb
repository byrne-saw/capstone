class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :patient_id
      t.string :notify_type
      t.integer :interval
      t.boolean :triggered
      t.boolean :banner_alerted
      t.boolean :sms_text
      t.time :text_at
      t.boolean :text_sent

      t.timestamps
    end
  end
end
