Rails.application.routes.draw do
  resources :phone_numbers
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "login_page#index"
  # Defines the root path route ("/")
  get "/addressbook", to: "address_book#index"
  get "/newcontact", to: "new_contact#index"
  # root "articles#index"
  resources :people, only: [:create, :index, :update, :destroy]
end
