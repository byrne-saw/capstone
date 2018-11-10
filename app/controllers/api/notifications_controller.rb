class Api::NotificationsController < ApplicationController
  validates :user_id, presence: true
  validates :notify_type, presence: true

    before_action :authenticate_user

end
