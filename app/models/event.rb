class Event < ApplicationRecord
  belongs_to :listing
  has_many :bookings
end
