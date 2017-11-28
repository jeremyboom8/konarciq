class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, length: { minimum: 10 }
  validates :listing_id, uniqueness: { scope: :user_id, message: "You've reviewed this listing!" }

end
