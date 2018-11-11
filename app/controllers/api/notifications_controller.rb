class Api::NotificationsController < ApplicationController
  before_action :authenticate_user

  def index
    if params[:patient_id]
      user = User.find(params[:patient_id])
    elsif current_user.admin
      @notifications = Notification.all.order(created_at: :desc)
      return render 'index.json.jbuilder'
    end

    if current_user.admin
      @notifications = user.notifications.order(:created_at)
    elsif current_user.doctor

      if current_user.patients.pluck(:id).include?(params[:patient_id].to_i) # is the patient requested, a patient of the doctor?
        @notifications = user.notifications.order(:created_at)
      else
        return render json: {message: "That is not one of your patients"}
      end

    else
      @notifications = current_user.notifications.order(:created_at)
    end
    render 'index.json.jbuilder'

  end



  def create
    if current_user.doctor || current_user.admin
      user_id = params[:patient_id]
    else
      user_id = current_user.id
    end
    @notification = Notification.new(
                                    user_id: user_id,
                                    notify_type: params[:notify_type] || "Blood Pressure",
                                    interval: params[:interval],
                                    triggered: params[:triggered],
                                    banner_alerted: params[:banner_alerted],
                                    sms_text: params[:sms_text],
                                    text_at: params[:text_at],
                                    text_sent: params[:text_sent]
                                    )
    if @notification.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @notification.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.admin
      notification_id = params[:id].to_i
    elsif current_user.doctor
      if current_user.patients.pluck(:id).include?(Notification.find(params[:id].to_i).user_id)
        notification_id = params[:id].to_i
      else
        return render json: {message: "That is not one of your patient's notifications"}
      end
    else
        if current_user.id == Notification.find(params[:id].to_i).user_id
          notification_id = params[:id].to_i
        else
          return render json: {message: "That is not one of your logs"}
        end
      end
      @notification = Notification.find(notification_id) 
      @notification.destroy
      render json: {message: "Notification successfully destroyed"}
  end

  def alert
    trigger_user(current_user.id)
    notifications = Notification.where("user_id = ? AND triggered = ? AND banner_alerted = ?", current_user.id, true, false)
    if notifications.count > 0
      alert = true
    else
      alert = false
    end

    if alert
      render json: {message: "You haven't submitted a blood pressure reading in #{@hours_between} hours. Please do so soon!"}
    else
      render json: {message: ""}
    end 

    notifications.each do |notice|
      notice.banner_alerted = true
      notice.save
    end
  end

  def trigger_user(cu_id)
    notifications = Notification.where("user_id = ? AND (triggered = ? OR triggered is ?) AND (banner_alerted = ? OR banner_alerted is ?)", cu_id, false, nil, false, nil)
      max_bp = BloodPressureLog.where(user_id: cu_id).order(log_time: :desc).limit(1).pluck(:log_time)
      now = Time.current
      time_diff = now - max_bp[0]
      @hours_between = (time_diff / 1.hour).round
    notifications.each do |notice| 
      if @hours_between > notice.interval
        notice.triggered = true
        notice.save
      end
    end
    return @hours_between
  end

  def text
    message = "testing at #{Time.now}"
    phone_number = "(773)-885-3893"
   TwilioText.new(message, phone_number).text
  end

end
