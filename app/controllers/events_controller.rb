class EventsController < ApplicationController
  before_action :set_listing, only: [:new, :index]

  def index
    @events = Event.all
    @events = @listing.events
    @booking = Booking.new
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
