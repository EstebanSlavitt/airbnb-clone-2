Rails.application.routes.draw do
  resources :users
  resources :listings
  resources :reservations
  get "/listings" => "listings#index"
end
