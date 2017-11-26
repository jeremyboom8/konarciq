class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @listings = Listing.where("'%#{params[:query]}%'")
    else
      @listings = Listing.where.not(latitude: nil, longitude: nil)
      # @listings = Listing.all
    end
      @Listing = Listing.where.not(latitude: nil, longitude: nil)
    @markers = Gmaps4rails.build_markers(@listings) do |listing, marker|
      marker.lat listing.latitude
      marker.lng listing.longitude
      # marker.infowindow render_to_string(partial: "/listings/map_box", locals: { listing: listing })
    end
  end

  def new
    @listing = Listing.new
  end

  def show
    @booking = Booking.new
    @listing = Listing.find(params[:id])
    @listing_coordinates = { lat: @listing.latitude, lng: @listing.longitude }
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
    params.require(:listing).permit(:title, :caption, :description, :address, photos: [])
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
