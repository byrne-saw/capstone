class Api::DoctorsController < ApplicationController
  before_action :authenticate_admin

  def index
    @doctors = User.where(doctor: true)
    render 'index.json.jbuilder'
  end

  def create
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
    doctor.twilio_number = doctor.twilio_convert(doctor.phone_number)
    if doctor.save
      render json: {message: 'Doctor created successfully'}, status: :created
    else
      render json: {errors: doctor.errors.full_messages}, status: :bad_request
    end
  end

  def doctors_info_list
    @doctors_info_list = User.doctor_options_list
    render json: @doctors_info_list
  end

end
