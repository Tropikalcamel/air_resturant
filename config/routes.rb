# config/routes.rb
Rails.application.routes.draw do
  # Other routes

  resources :bookings do
    member do
      patch 'cancel'
    end
  end
end
