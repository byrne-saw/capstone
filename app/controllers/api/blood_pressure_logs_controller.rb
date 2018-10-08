class Api::BloodPressureLogsController < ApplicationController
  before_action :authenticate_user

  def index
    @blood_pressure_logs = current_user.blood_pressure_logs
    render 'index.json.jbuilder'
  end

  
end
