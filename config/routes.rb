# config/routes.rb
Rails.application.routes.draw do
  resources :bookings do
    member do
      patch 'cancel'
    end
  end
  devise_for :users
    get 'profile', to: 'pages#profile', as: "profile"
    root to: "restaurants#index"

  resources :restaurants do
    resources :bookings
  end
end
