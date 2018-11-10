class Api::NotificationsController < ApplicationController
  before_action :authenticate_user

  def index
    if params[:patient_id]
      user = User.find(params[:patient_id])
    end

    if current_user.admin
      @notifications = user.notifications.order
    end

  end

  def create

  end

  def destory

  end
end
