class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create

    @review = Review.new(reviews_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      raise
      render :new
    end

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
