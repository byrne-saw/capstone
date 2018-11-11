class Notification < ApplicationRecord
  validates :user_id, presence: true
  validates :notify_type, presence: true
  validates :interval, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 168 }


  belongs_to :user

  # def trigger_all
  #   notifications = Notification.where("triggered = ? OR triggered is ?", false, nil)
  #   notifications.each do |notice|
  #     max_bp_log = BloodPressureLog.find_by_sql([
  #       "select
  #         max(bp.log_time)
  #       from
  #         blood_pressure_logs bp
  #       where
  #         user_id = #{notice.user_id}"
  #     ])
  #     p max_bp_log

  #   end

  # end

  # def trigger_user
    
  # end


end
