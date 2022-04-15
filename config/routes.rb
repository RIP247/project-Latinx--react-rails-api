Rails.application.routes.draw do
  
  resources :countries
  resources :artworks
  resources :users
  resources :artists
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
