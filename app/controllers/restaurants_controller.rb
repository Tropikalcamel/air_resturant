class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @bookings = @restaurant.bookings
  end

  def vegetarian!
    @vegetarian = Restaurant.vegetarian
    

  end
end
