class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :listings, :guide]

  def home
  end

  def about
  end

  def contact
  end

  def guide
  end
end
