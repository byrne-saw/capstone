class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  has_many :blood_pressure_logs
  has_many :doctor_connections, class_name: "DoctorPatient", foreign_key: "patient_id"
  has_many :doctors, through: :doctor_connections

  has_many :patient_connections, class_name: "DoctorPatient", foreign_key: "doctor_id"
  has_many :patients, through: :patient_connections

  def role
    if self.admin == true
      return "admin"
    elsif self.doctor == true
      return "doctor"
    else
      return "patient"
    end    
  end

end
