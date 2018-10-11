class Api::DoctorsController < ApplicationController
  before_action :authenticate_doctor

  def create_patient
    patient = User.new(
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      phone_number: params[:phone_number],
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation],
                      admin: false, 
                      doctor: false
                      )

    if patient.save
      patient_doctor_relationship = DoctorPatient.new(
                                                      doctor_id: current_user.id,
                                                      patient_id: patient.id
                                                      )
      patient_doctor_relationship.save
      render json: {message: 'Patient created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
