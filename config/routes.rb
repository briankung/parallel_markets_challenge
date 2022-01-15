Rails.application.routes.draw do
  devise_for :investors
  resources :investors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "investors#index"
end
