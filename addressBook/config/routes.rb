Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "login_page#index"
  # Defines the root path route ("/")
  get "/addressbook", to: "address_book#index"
  get "/newcontact", to: "new_contact#index"
  # root "articles#index"
end
