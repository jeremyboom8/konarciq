class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @bookings = current_user.bookings
    @listings = current_user.listings
    @events = current_user.events
  end
end
