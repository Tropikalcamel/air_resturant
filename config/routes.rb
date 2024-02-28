# config/routes.rb
Rails.application.routes.draw do
  resources :bookings do
    member do
      patch 'cancel'
    end
  end
  devise_for :users
  root to: "pages#home"
  resources :restaurants do
    resources :bookings
  end
end
