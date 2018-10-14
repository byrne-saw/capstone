class Api::AdminsController < ApplicationController
  before_action :authenticate_admin

  def create_admin
    admin = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    phone_number: params[:phone_number],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation],
                    admin: true, 
                    doctor: false
                    )
    if admin.save
      render json: {message: 'Admin created successfully'}, status: :created
    else
      render json: {errors: admin.errors.full_messages}, status: :bad_request
    end
  end

  def create_doctor
    doctor = User.new(
                     first_name: params[:first_name],
                     last_name: params[:last_name],
                     phone_number: params[:phone_number],
                     email: params[:email],
                     password: params[:password],
                     password_confirmation: params[:password_confirmation],
                     admin: false, 
                     doctor: true 
                     )
    if doctor.save
      render json: {message: 'Doctor created successfully'}, status: :created
    else
      render json: {errors: doctor.errors.full_messages}, status: :bad_request
    end
  end

  def create_patient
    doctor = find_doctor
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
                                                      doctor_id: doctor.id,
                                                      patient_id: patient.id
                                                      )
      patient_doctor_relationship.save
      render json: {message: 'Patient created successfully'}, status: :created
    else
      render json: {errors: patient.errors.full_messages}, status: :bad_request
    end
  end

  def find_doctor
    doctor = User.find(params[:doctor_id])
    if doctor.doctor
      return doctor  
    else 
      return User.where(doctor: true).last
    end 
  end

end
