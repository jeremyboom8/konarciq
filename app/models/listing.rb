class Listing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :nullify

  validates :title, presence: true
end
