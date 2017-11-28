class Event < ApplicationRecord
  belongs_to :listing
  has_many :bookings
  monetize :price_cents
end
