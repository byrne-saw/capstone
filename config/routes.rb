Rails.application.routes.draw do
  namespace :api do

    post "/users" => "users#create" # I think I can delete this
    post "/sessions" => "sessions#create"

    post "/admins" => "admins#create_admin"
    post "/admins/doctors" => "admins#create_doctor"
    post "/admins/patients" => "admins#create_patient"

    post "/doctors/patients" => "doctors#create_patient"

    get "/blood_pressure_logs" => "blood_pressure_logs#index"
    post "/blood_pressure_logs" => "blood_pressure_logs#create"
    patch "/blood_pressure_logs/:id" => "blood_pressure_logs#update"
    delete "/blood_pressure_logs/:id" => "blood_pressure_logs#destroy"

    get "/doctors/patients" => "doctors#patients_index"

    get "/admins/admins" => "admins#admins_index"
    get "/admins/doctors" => "admins/#doctors_index"
    get "/admins/patients" => "admins/#patients_idex"

  end
end
