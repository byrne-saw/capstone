Rails.application.routes.draw do
  namespace :api do

    post "/sessions" => "sessions#create"

    get "/admins" => "admins#index"
    post "/admins" => "admins#create"

    get "/doctors" => "doctors#index" 
    get "/doctors_info_list" => "doctors#doctors_info_list"
    post "/doctors" => "doctors#create"

    get "/patients" => "patients#index"
    post "/patients" => "patients#create"
    patch "/patients/:id" => "patients#update"
    delete "/patients/:id" => "patients#destroy"

    get "/blood_pressure_logs" => "blood_pressure_logs#index"
    post "/blood_pressure_logs" => "blood_pressure_logs#create"
    get "/blood_pressure_logs/recent" => "blood_pressure_logs#recent"
    patch "/blood_pressure_logs/:id" => "blood_pressure_logs#update"
    delete "/blood_pressure_logs/:id" => "blood_pressure_logs#destroy"
    
    get "/notifications" => "notifications#index"
    post "/notifications" => "notifications#create"
    delete "/notifications/:id" => "notifications#destroy"
    get "/alert" => "notifications#alert"
    post "/text" => "notifications#text"

    post "/inbound_texts" => "inbound_texts#bp_create"

  end
end
