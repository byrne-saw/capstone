class Api::PatientsController < ApplicationController
  before_action :authenticate_doctor

  def index
    @patients = User.find_by_sql([
            "select
              p.first_name
              , p.last_name
              , p.phone_number
              , p.email
              , p.created_at
              , p.id
              , d.first_name as doctor_first_name
              , d.last_name as doctor_last_name
              , 'Dr. ' || d.first_name || ' ' || d.last_name as doctor_name 

            from 
              users p
              left join doctor_patients dp on dp.patient_id = p.id
              left join users d on d.id = dp.doctor_id

            where
              p.admin = false
              and p.doctor = false
              #{unless current_user.admin 
                  p "and d.id = #{current_user.id}" 
                end}
            order by
              d.last_name, p.last_name"
          ])
    render 'index.json.jbuilder'
  end

  def create
    if current_user.doctor 
      doctor = current_user
    else
      doctor = User.find(params[:doctor_id])
      unless doctor && doctor.doctor
        render json: {message: "Must include patient's doctor"}, status: :bad_request
        return
      end
    end
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
    patient.twilio_number = patient.twilio_convert(patient.phone_number)
    if patient.save
      patient_doctor_relationship = DoctorPatient.new(
                                                      doctor_id: doctor.id,
                                                      patient_id: patient.id
                                                      )
      patient_doctor_relationship.save
      notify = Notification.new(
                                user_id: patient.id,
                                notify_type: "Blood Pressure",
                                interval: 24
                                )
      notify.save

      message = "Welcome to Apple-A-Day #{patient.first_name} - I can't wait to start working with you! Let me know if you have any questions.  ~ Dr. #{doctor.first_name} #{doctor.last_name}"
      phone_number = patient.twilio_number
      TwilioText.new(message, phone_number).text

      render json: {message: 'Patient created successfully'}, status: :created
    else
      render json: {errors: patient.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.first_name = params[:first_name].blank? ? @user.first_name : params[:first_name]
    @user.last_name = params[:last_name].blank? ? @user.last_name : params[:last_name]
    @user.phone_number = params[:phone_number].blank? ? @user.phone_number : params[:phone_number]
    @user.email = params[:email].blank? ? @user.email : params[:email]

    if @user.save
      render json: {message: "User successfully updated"}
    else
      render json: {errors: @user.errors.full_messages}, status:  :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    notifications = Notification.where("user_id = ?", params[:id])
    unless notifications == []
      notifications.each do |notice|
        notice.destroy
      end
    end
    bp_logs = BloodPressureLog.where("user_id = ?", params[:id])
    unless bp_logs == []
      bp_logs.each do |bp_log|
        bp_log.destroy
      end
    end
    @user.destroy
  end
end
