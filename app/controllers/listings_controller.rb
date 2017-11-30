class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    if params[:locationsearch].present?
      @locationsearch = params[:locationsearch]
      @listings = Listing.near(@locationsearch, 14)

      @markers = Gmaps4rails.build_markers(@listings) do |listing, marker|
        marker.lat listing.latitude
        marker.lng listing.longitude
        marker.infowindow render_to_string(partial: "/listings/map_box", locals: { listing: listing })

        # Get the marker right https://github.com/lewagon/google-maps-markers-static/blob/gh-pages/index.html
      end
    else
      # Only builds the markers that have a lon and lat
      @listings = Listing.where.not(latitude: nil, longitude: nil)

      @markers = Gmaps4rails.build_markers(@listings) do |listing, marker|
        marker.lat listing.latitude
        marker.lng listing.longitude
        marker.infowindow render_to_string(partial: "/listings/map_box", locals: { listing: listing })
      end
    end
  end

  def new
    @listing = Listing.new
  end

  def show
    @booking = Booking.new
    @listing = Listing.find(params[:id])
    @listing_coordinates = { lat: @listing.latitude, lng: @listing.longitude }
    @review = Review.new  # <-- You need this now.
  end

 def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @youtube_id = params[:listing][:youtube_id].match(/^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/)[1]
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
