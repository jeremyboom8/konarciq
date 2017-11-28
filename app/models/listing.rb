class Listing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :events, dependent: :nullify
  has_attachments :photos, maximum: 5

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :title, presence: true

  def short_title
    self.title[0..15] + '...'
  end
end
