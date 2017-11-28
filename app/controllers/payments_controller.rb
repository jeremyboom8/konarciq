class PaymentsController < ApplicationController
  before_action :set_booking

  def show

  end

  def new
    # Display the Stripe button
  end

  def create
    # Callback from Stripe
    # Store info about the payment
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

      @booking.update(payment: charge.to_json)
      flash[:notice] = "Your booking was paid for successfully"
      redirect_to listing_event_booking_path(@booking.event.listing, @booking.event, @booking)
    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_listing_event_booking_payment_path(@booking)
    end
    
    # TODO: remove 1 from max_capacity
  end

private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
