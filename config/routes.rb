Rails.application.routes.draw do
  namespace :api do

    post "/sessions" => "sessions#create"

    get "/admins" => "admins#index" #display all admins to admin
    post "/admins" => "admins#create"

    get "/doctors" => "doctors#index" #display all doctors to admin
    post "/doctors" => "doctors#create"

    get "/patients" => "patients#index" #if admin, group by doctor, if doctor is loged in only show this doctor's patients.
    post "/patients" => "patients#create"

    get "/blood_pressure_logs" => "blood_pressure_logs#index"
    post "/blood_pressure_logs" => "blood_pressure_logs#create"
    get "/blood_pressure_logs/recent" => "blood_pressure_logs#recent"
    patch "/blood_pressure_logs/:id" => "blood_pressure_logs#update"
    delete "/blood_pressure_logs/:id" => "blood_pressure_logs#destroy"
    
  end
end
