class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, length: { minimum: 20 }
end
