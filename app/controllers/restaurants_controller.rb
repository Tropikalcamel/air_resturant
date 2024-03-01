class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @booking = Booking.new
  end

  def vegetarian!
    @vegetarian = Restaurant.vegetarian


  end
end
