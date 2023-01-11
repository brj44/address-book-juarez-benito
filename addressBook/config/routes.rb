Rails.application.routes.draw do
  resources :addresses
  resources :emails
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :phone_numbers
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "sessions#new"
  # Defines the root path route ("/")
end
