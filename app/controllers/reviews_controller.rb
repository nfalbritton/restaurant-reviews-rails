class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      flash[:notice] = "Review added successfully. You should be proud"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = @review.errors.full_messages.join(', ')
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end 
end
