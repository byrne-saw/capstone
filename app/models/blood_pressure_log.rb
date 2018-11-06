class BloodPressureLog < ApplicationRecord
  validates :user_id, presence: true
  validates :log_time, presence: true
  validates :systolic, presence: true
  validates :systolic, numericality: { greater_than: 0, only_integer: true, greater_than_or_equal_to: 1, less_than: 200 }
  validates :diastolic, presence: true
  validates :diastolic, numericality: { greater_than: 0, only_integer: true, greater_than_or_equal_to: 1, less_than: 200 }

  belongs_to :user

  def friendly_log_time
    # formated_time = log_time - 6.hours
    # formated_time.strftime("%a, %d %b %Y %l:%M %p")
    log_time.strftime("%a, %d %b %Y %l:%M %p")
  end

end
