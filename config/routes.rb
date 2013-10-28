ApiMashup::Application.routes.draw do
  root to: "challenges#index"
  get "/challenge", to: "challenges#show", as: "challenge"
  get "/login", to: "sessions#new"
  get "/apis/:id/mashups", to: "apis#mashups", as: "api_mashups"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/login", to: "sessions#new", as: "login"
  resources :sessions, only: [:create]
  resources :users, only: [:new, :create, :show]
  resources :apis
  resources :mashups

  # get "/apis", to: "apis#index"
  # get "/apis/new", to: "apis#new"
  # get "/apis/:id", to: "apis#show"
  # post "/apis", to: "apis#create"
  # get "/mashups/:id", to: "mashups#show"
  # get "/mashups", to: "mashups#index"
  # get "/mashups/new", to: "mashups#new"
  # post "/mashups", to: "mashups#create"


end
