class ReviewsController < ApplicationController

  before_action :set_review, only: [ :new, :show ]
  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = set_review
    if @review.save
      redirect_to restaurant_path(set_review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
