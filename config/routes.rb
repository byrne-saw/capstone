Rails.application.routes.draw do
  namespace :api do

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/blood_pressure_logs" => "blood_pressure_logs#index"
    post "/blood_pressure_logs" => "blood_pressure_logs#create"
    patch "/blood_pressure_logs/:id" => "blood_pressure_logs#update"
    delete "/blood_pressure_logs/:id" => "blood_pressure_logs#destroy"

  end
end
