Rails.application.routes.draw do
  resources :clothes
  resources :outfits
  resources :users

  get "/signup", to: "users#new"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
