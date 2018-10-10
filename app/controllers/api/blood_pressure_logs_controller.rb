class Api::BloodPressureLogsController < ApplicationController
  before_action :authenticate_user

  def index
    @blood_pressure_logs = current_user.blood_pressure_logs
    render 'index.json.jbuilder'
  end

  def create
    if current_user.doctor || current_user.admin
      user = params[:user_id]
    else
      user = current_user.id
    end
    @blood_pressure_log = BloodPressureLog.new(
                                              user_id: user,
                                              log_time: Time.now, 
                                              systolic: params[:systolic],
                                              diastolic: params[:diastolic]
                                              )
    if @blood_pressure_log.save
        render 'show.json.jbuilder'
    else
      render json: {errors: @blood_pressure_log.errors.full_messages}, status:  :unprocessable_entity
    end
  end

  def update
    @blood_pressure_log = BloodPressureLog.find(params[:id])
    @blood_pressure_log.log_time = params[:log_time] || @blood_pressure_log.log_time
    @blood_pressure_log.systolic = params[:systolic] || @blood_pressure_log.systolic
    @blood_pressure_log.diastolic = params[:diastolic] || @blood_pressure_log.diastolic
    if @blood_pressure_log.save
        render 'show.json.jbuilder'
    else
      render json: {errors: @blood_pressure_log.errors.full_messages}, status:  :unprocessable_entity
    end
  end

  def destroy
    @blood_pressure_log = BloodPressureLog.find(params[:id])
    @blood_pressure_log.destroy
    render json: {message: "Blood Pressure Log successfully desroyed"}
  end

end
