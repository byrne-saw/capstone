class Api::BloodPressureLogsController < ApplicationController
  before_action :authenticate_user

  def index

    if params[:patient_id]
      user = User.find(params[:patient_id])
    end

    if current_user.admin      
      @blood_pressure_logs = user.blood_pressure_logs.order(log_time: :desc)
    elsif current_user.doctor

      if current_user.patients.pluck(:id).include?(params[:patient_id].to_i) # is the patient requested, a patient of the doctor?
        @blood_pressure_logs = user.blood_pressure_logs.order(log_time: :desc)
      else
        return render json: {message: "That is not one of your patients"}
      end

    else
      @blood_pressure_logs = current_user.blood_pressure_logs.order(log_time: :desc)
    end
    render 'index.json.jbuilder'

  end

  def create

    if current_user.doctor || current_user.admin
      user_id = params[:patient_id]
    else
      user_id = current_user.id
    end
    log_time_build = params[:log_date] + " " + params[:log_hour_min]

    @blood_pressure_log = BloodPressureLog.new(
                                              user_id: user_id,
                                              log_time: log_time_build, 
                                              systolic: params[:systolic],
                                              diastolic: params[:diastolic]
                                              )
    if @blood_pressure_log.save
        render 'show.json.jbuilder'
    else
      render json: {errors: @blood_pressure_log.errors.full_messages}, status:  :unprocessable_entity
    end

  end

  def recent
    if params[:patient_id]
      user = User.find(params[:patient_id])
    end

    if current_user.admin      
      @blood_pressure_logs = user.blood_pressure_logs.order(log_time: :desc).limit(5)
    elsif current_user.doctor

      if current_user.patients.pluck(:id).include?(params[:patient_id].to_i) # is the patient requested, a patient of the doctor?
        @blood_pressure_logs = user.blood_pressure_logs.order(log_time: :desc).limit(5)
      else
        return render json: {message: "That is not one of your patients"}
      end

    else
      @blood_pressure_logs = current_user.blood_pressure_logs.order(log_time: :desc).limit(5)
    end
    render 'index.json.jbuilder'
  end

  def update
    #this following if statement is a candidate for a seperate method
    if current_user.admin
      blood_pressure_log_id = params[:id].to_i
    elsif current_user.doctor
      if current_user.patients.pluck(:id).include?(BloodPressureLog.find(params[:id].to_i).user_id)
        blood_pressure_log_id = params[:id]
      else
        return render json: {message: "That is not one of your patient's logs"}
      end
    else
      if current_user.id == BloodPressureLog.find(params[:id]).user_id
        blood_pressure_log_id = params[:id]
      else
        return render json: {message: "That is not one of your logs"}
      end
    end

    @blood_pressure_log = BloodPressureLog.find(blood_pressure_log_id)
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
    if current_user.admin
      blood_pressure_log_id = params[:id].to_i
    elsif current_user.doctor
      if current_user.patients.pluck(:id).include?(BloodPressureLog.find(params[:id].to_i).user_id)
        blood_pressure_log_id = params[:id]
      else
        return render json: {message: "That is not one of your patient's logs"}
      end
    else
      if current_user.id == BloodPressureLog.find(params[:id]).user_id
        blood_pressure_log_id = params[:id]
      else
        return render json: {message: "That is not one of your logs"}
      end
    end
    
    @blood_pressure_log = BloodPressureLog.find(blood_pressure_log_id)
    @blood_pressure_log.destroy
    render json: {message: "Blood Pressure Log successfully desroyed"}
  end

end
