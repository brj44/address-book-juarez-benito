Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :phone_numbers
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "sessions#new"

  get "/phone_numbers", to: "phone_numbers#index"
  # Defines the root path route ("/")
end
