Rails.application.routes.draw do
  resources :paths
  devise_for :users , defaults: { format: :json }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#hello"
end
