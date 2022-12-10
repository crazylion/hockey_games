Rails.application.routes.draw do
  resources :games
  resources :teams
  resources :terms
  resources :cups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
