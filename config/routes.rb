Rails.application.routes.draw do
  resources :clothes
  resources :outfits
  resources :users

  get "/gttr", to: "application#gttr"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  delete "/gttr", to: "users#destroy"
end
