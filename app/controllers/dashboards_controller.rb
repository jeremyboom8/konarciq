class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @listings = current_user.listings
    @bookings = current_user.bookings
    @events = current_user.events
  end

end
