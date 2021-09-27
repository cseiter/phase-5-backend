Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :tickets
  resources :statuses
  resources :stations
  resources :devices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
