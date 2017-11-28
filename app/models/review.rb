class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, length: { maximum: 300 }
end
