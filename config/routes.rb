Rails.application.routes.draw do
  resources :links
  devise_for :admin_users
  devise_for :users
  namespace :admin do
    resources :terms
    resources :teams
    resources :games
    resources :cups
    resources :links
    root to: "terms#index"
  end
  get "index/index"
  resources :games
  resources :teams
  resources :terms
  resources :cups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
