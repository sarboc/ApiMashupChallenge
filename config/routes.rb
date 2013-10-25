ApiMashup::Application.routes.draw do
  get "/mashups/all/:id", to: "mashups:show_by_api_id"
  get "/mashups/:id", to: "mashups:show"
  get "/mashups", to: "mashups#index"
  get "/mashups/new", to: "mashups#new"
  post "/mashups", to: "mashups#create"
  get "/apis", to: "apis#index"
  get "/apis/:id", to: "apis#show"

end
