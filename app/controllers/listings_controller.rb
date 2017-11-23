class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @listings = Listing.where("'%#{params[:query]}%'")
    else
      @listings = Listing.all
    end
  end

  def new
    @listing = Listing.new
  end

  def show
    @booking = Booking.new
    @listing = Listing.find(params[:id])
  end

 def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def update
    @listing.update(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :address, :description, :photos [])
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
