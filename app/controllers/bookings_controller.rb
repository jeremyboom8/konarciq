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
    set_event
    @booking = current_user.bookings.new(event: @event, event_sku: @event.sku, amount_cents: @event.price_cents)
    begin
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

      charge = Stripe::Charge.create(
        customer:     customer.id,   # You should store this customer id and re-use it.
        amount:       @booking.amount_cents,
        description:  "Payment for teddy #{@booking.event_sku} for booking #{@booking.id}",
        currency:     @booking.amount.currency
      )

      @booking.payment = charge.to_json

      if @booking.save
        flash[:notice] = "Your booking was paid for successfully"
        redirect_to listing_event_booking_path(@booking.event.listing, @booking.event, @booking)
      else
        redirect_to new_listing_event_booking_payment_path(@booking)
      end
    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_listing_event_booking_payment_path(@booking)
    end
  end

  def new
    set_listing
    set_event
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
