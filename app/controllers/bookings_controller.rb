class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_event, only: [:create, :new, :show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  # TODO add message to booking
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.event = @event
    @booking.customer_message = params[:customer_message]
    @booking.save
  end

  def new
    set_listing
    @booking = Booking.new
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def booking_params
    params.require(:booking).permit(:customer_message, :start_date, :end_date)
  end
end
