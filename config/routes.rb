ApiMashup::Application.routes.draw do
  root to: "apis#index"
  get "/mashups/all/:id", to: "mashups#show_by_api_id"
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
