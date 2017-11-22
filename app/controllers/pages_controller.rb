class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :listings]

  def home
  end

  def about
  end

  def contact
  end
end
