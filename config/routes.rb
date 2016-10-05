Rails.application.routes.draw do
  resources :appointment_times
  resources :appointments
  resources :doctors
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
