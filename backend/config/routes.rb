Rails.application.routes.draw do
  resources :lessons
  resources :path_sections
  resources :courses
  resources :paths
  devise_for :users , defaults: { format: :json }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#hello"

  get "/test", to: "main#test"
end
