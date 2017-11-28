class ReviewsController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id])
    @review = Review.new(review_params)
    @review.listing = @listing
    @review.user = current_user
    if @review.save
      redirect_to listing_path(@listing)
    else
      render 'listings/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
