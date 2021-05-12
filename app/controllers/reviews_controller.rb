class ReviewsController < ActionController::Base

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
