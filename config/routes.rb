ApiMashup::Application.routes.draw do
  root to: "apis#index"
  get "/apis/:id/mashups", to: "apis#mashups", as: "api_mashups"
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
