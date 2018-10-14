class Api::PatientsController < ApplicationController
  before_action :authenticate_doctor

  def index

  end


  def create

  end



  # def create_patient
  #   patient = User.new(
  #                     first_name: params[:first_name],
  #                     last_name: params[:last_name],
  #                     phone_number: params[:phone_number],
  #                     email: params[:email],
  #                     password: params[:password],
  #                     password_confirmation: params[:password_confirmation],
  #                     admin: false, 
  #                     doctor: false
  #                     )

  #   if patient.save
  #     patient_doctor_relationship = DoctorPatient.new(
  #                                                     doctor_id: current_user.id,
  #                                                     patient_id: patient.id
  #                                                     )
  #     patient_doctor_relationship.save
  #     render json: {message: 'Patient created successfully'}, status: :created
  #   else
  #     render json: {errors: user.errors.full_messages}, status: :bad_request
  #   end
  # end


  # def patients_index
  #   @patients = current_user.patients 
  #   render 'index.json.jbuilder'
  # end


#  from old admin controller:

#   def create_patient
#     doctor = find_doctor
#     patient = User.new(
#                       first_name: params[:first_name],
#                       last_name: params[:last_name],
#                       phone_number: params[:phone_number],
#                       email: params[:email],
#                       password: params[:password],
#                       password_confirmation: params[:password_confirmation],
#                       admin: false, 
#                       doctor: false
#                       )

#     if patient.save
#       patient_doctor_relationship = DoctorPatient.new(
#                                                       doctor_id: doctor.id,
#                                                       patient_id: patient.id
#                                                       )
#       patient_doctor_relationship.save
#       render json: {message: 'Patient created successfully'}, status: :created
#     else
#       render json: {errors: patient.errors.full_messages}, status: :bad_request
#     end
#   end

# private

#   def find_doctor
#     doctor = User.find(params[:doctor_id])
#     if doctor.doctor
#       return doctor  
#     else 
#       return User.where(doctor: true).last
#     end 
#   end


end
