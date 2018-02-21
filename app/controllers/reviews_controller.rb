class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  def new
    @review= Review.new
  end

  def create

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find[:restaurant_id]
  end
end
