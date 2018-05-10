Rails.application.routes.draw do

  resources :orders
  get '/profile', to: "pages#profile"

  resources :tickets do
    member do
      post "/reserve", to: "orders#reserve"
    end
  end
  resources :routes
  devise_for :users

  get :search, controller: :searches
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
