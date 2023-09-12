Rails.application.routes.draw do
  resources :repetitions
  resources :activities
  resources :blocks
  resources :groups
  resources :sections
  resources :equipment
  resources :exercises
  resources :muscles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
