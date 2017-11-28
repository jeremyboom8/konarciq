class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  monetize :price_cents
end
