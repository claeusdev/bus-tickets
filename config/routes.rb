Rails.application.routes.draw do


  resources :seats
  resources :buses
  resources :orders
  get '/profile', to: "pages#profile"

  resources :tickets do
    member do
      get "/reserve", to: "orders#reserve"
    end
  end

  get '/admin', to: "dashboards#index"
  get '/cool', to: "dashboards#cool"

  resources :routes
  devise_for :users

  get :search, controller: :searches
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
