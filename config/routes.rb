Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "homes#index"
  devise_for :users, path_names: { sign_in: "login", sign_up: "register", sign_out: "logout", password: "password", confirmation: "verification" }
  resources :categories
  resources :transactions
end
