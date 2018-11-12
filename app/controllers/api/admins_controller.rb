class Api::AdminsController < ApplicationController
  before_action :authenticate_admin

  def index
    @admins = User.where(admin: true)
    render 'index.json.jbuilder'
  end

  def create
    admin = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    phone_number: params[:phone_number],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation],
                    admin: true, 
                    doctor: false
                    )
    admin.twilio_number = admin.twilio_convert(admin.phone_number)
    if admin.save
      render json: {message: 'Admin created successfully'}, status: :created
    else
      render json: {errors: admin.errors.full_messages}, status: :bad_request
    end
  end

  

end
