class Notification < ApplicationRecord
  validates :patient_id, presence: true
  validates :notify_type, presence: true
  validates :interval, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 168 }


  belongs_to :user

end
