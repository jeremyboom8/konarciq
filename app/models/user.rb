class User < ApplicationRecord
  has_many :listings
  has_many :reviews
  has_many :bookings

  # Did with Nick - Shows booked listings
  has_many :booked_listings, through: :bookings, class_name: "Listing", foreign_key: "listing_id"
  has_attachment :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
