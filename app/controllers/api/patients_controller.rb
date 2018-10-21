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
end
