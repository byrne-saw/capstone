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
end
