# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  resources :bookings do
    member do
      patch 'cancel'
    end
  end

  root to: "pages#home"
  resources :restaurants do
    resources :bookings
  end
end
