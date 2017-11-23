class Listing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :nullify
  has_attachment :photo

  validates :title, presence: true
  def short_title
    self.title[0..15] + '...'
  end
end
