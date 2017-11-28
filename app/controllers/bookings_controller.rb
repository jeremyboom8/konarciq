class BookingsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_booking, only: [:show]
  before_action :set_event, only: [:create, :new, :show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    set_listing
    event = Event.find(params[:event_id])
    booking = Booking.new(event_sku: event.sku, amount_cents: event.price_cents)
    booking.customer_message = params[:customer_message]
    booking.user = current_user
    booking.event = event
    booking.save
    redirect_to new_listing_event_booking_payment_path(@listing, event, booking)
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
