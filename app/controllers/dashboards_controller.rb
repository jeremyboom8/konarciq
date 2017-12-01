class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @listings = Listing.all
    @bookings = Event.all
    @events = Booking.all
  end

end
